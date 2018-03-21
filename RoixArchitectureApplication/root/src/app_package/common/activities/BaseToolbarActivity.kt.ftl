package ${packageName}.ui.common.activities

import android.databinding.ViewDataBinding
import android.support.annotation.CallSuper
import android.support.annotation.DrawableRes
import android.support.v4.content.ContextCompat
import android.support.v7.widget.Toolbar
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import ${packageName}.BR
import ${packageName}.R
import ${packageName}.databinding.MenuItemBinding
import ${packageName}.ui.common.view.ToolbarType
import ${packageName}.ui.common.viewmodels.BaseLifecycleViewModel
import kotlinx.android.synthetic.main.toolbar.view.*

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseToolbarActivity<ViewModel : BaseLifecycleViewModel, DataBinding : ViewDataBinding> : BaseDatabindingActivity<ViewModel, DataBinding>() {

    abstract fun getToolbar(): Toolbar?

    @CallSuper
    override fun setupUi() {
        super.setupUi()
        setupToolbar((ToolbarType(this)))
    }

    @CallSuper
    open fun setupToolbar(toolbarType: ToolbarType) {
        binding.setVariable(BR.toolbarType, toolbarType)
        val toolbar = getToolbar()
        if (toolbar != null) {
            toolbar.navigation_tb
                    .setOnClickListener({
                        if (R.drawable.ic_navigation_menu === toolbarType.icon) {
                            openNavigationView()
                        } else if (R.drawable.ic_back === toolbarType.icon) {
                            goBack()
                        }
                    })
            clearToolbarItems()
        }
    }

    /**
     * Adds menu item to toolbar.
     *
     * @param drawableIcon    item icon
     * @param onClickListener action on click
     */
    fun addToolbarItem(@DrawableRes drawableIcon: Int, onClickListener: View.OnClickListener) {
        val toolbar = getToolbar()
        if (toolbar != null) {
            val view = LayoutInflater.from(this).inflate(R.layout.menu_item, getToolbar(), false)
            view.setOnClickListener(onClickListener)
            val itemContainer = toolbar.ll_items as LinearLayout
            itemContainer.addView(view)
            val menuItemBinding = MenuItemBinding.bind(view)
            menuItemBinding.icon = ContextCompat.getDrawable(this, drawableIcon)
        }
    }

    fun addToolbarItem(view: View) {
        val toolbar = getToolbar()
        if (toolbar != null) {
            val itemContainer = toolbar.ll_items as LinearLayout
            itemContainer.addView(view)
        }
    }

    fun clearToolbarItems() {
        val toolbar = getToolbar()

        if (toolbar != null) {
            val itemContainer = toolbar.ll_items as LinearLayout
            itemContainer.removeAllViews()
        }
    }

    fun hideToolbarItems() {
        val toolbar = getToolbar()

        if (toolbar != null) {
            val itemContainer = toolbar.ll_items as LinearLayout
            var i = 0
            while (i < itemContainer.childCount) {
                itemContainer.getChildAt(i).visibility = View.GONE
                i++
            }
        }
    }

    /**
     * Finishes activity.
     */
    protected open fun goBack() {
        supportFinishAfterTransition()
    }

    /**
     * Open navigation view when click on hamburger
     */
    protected open fun openNavigationView() {
        // Need to override in child
    }

}
