package ${packageName}.ui.common.delegates.view.toolbar

import android.content.Context
import android.view.LayoutInflater
import android.view.View
import android.widget.LinearLayout
import androidx.core.content.ContextCompat
import ${packageName}.BR
import ${packageName}.R
import ${packageName}.databinding.MenuItemBinding
import ${packageName}.ui.common.delegates.view.databinding.IDatabindingHandleDelegate
import ${packageName}.ui.common.delegates.vvm.navigation.INavigationDelegate
import ${packageName}.ui.common.view.ToolbarType
import kotlinx.android.synthetic.main.toolbar.view.*

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ToolbarDelegate : IToolbarDelegate {

    private lateinit var databindingDelegate: IDatabindingHandleDelegate<*, *>
    private lateinit var navigationDelegate: INavigationDelegate
    private lateinit var toolbarProvider: ToolbarProvider
    private lateinit var context: Context
    override lateinit var toolbarType: ToolbarType

    override fun initToolbarDelegate(databindingDelegate: IDatabindingHandleDelegate<*, *>, navigationDelegate: INavigationDelegate, toolbar: ToolbarProvider, c: Context) {
        this.databindingDelegate = databindingDelegate
        this.navigationDelegate = navigationDelegate
        toolbarProvider = toolbar
        context = c
        setupToolbar((ToolbarType(c)))
    }

    override fun setupToolbar(type: ToolbarType) {
        this.toolbarType = type
        databindingDelegate.binding.setVariable(BR.toolbarType, type)
        val toolbar = toolbarProvider.getToolbar()
        if (toolbar != null) {
            toolbar.navigation_tb
                    .setOnClickListener {
                        if (R.drawable.ic_navigation_menu == type.icon.value) {
                            openNavigationView()
                        } else if (R.drawable.ic_back == type.icon.value) {
                            navigationDelegate.goBack()
                        }
                    }
            clearToolbarItems()
        }
    }

    override fun addToolbarItem(drawableIcon: Int, onClickListener: View.OnClickListener) {
        val toolbar = toolbarProvider.getToolbar()
        if (toolbar != null) {
            val view = LayoutInflater.from(context).inflate(R.layout.menu_item, toolbar, false)
            view.setOnClickListener(onClickListener)
            val itemContainer = toolbar.ll_items as LinearLayout
            itemContainer.addView(view)
            val menuItemBinding = MenuItemBinding.bind(view)
            menuItemBinding.icon = ContextCompat.getDrawable(context, drawableIcon)
        }
    }

    override fun addToolbarItem(view: View) {
        val toolbar = toolbarProvider.getToolbar()
        if (toolbar != null) {
            val itemContainer = toolbar.ll_items as LinearLayout
            itemContainer.addView(view)
        }
    }

    override fun clearToolbarItems() {
        val toolbar = toolbarProvider.getToolbar()
        if (toolbar != null) {
            val itemContainer = toolbar.ll_items as LinearLayout
            itemContainer.removeAllViews()
        }
    }

    override fun hideToolbarItems() {
        val toolbar = toolbarProvider.getToolbar()
        if (toolbar != null) {
            val itemContainer = toolbar.ll_items as LinearLayout
            var i = 0
            while (i < itemContainer.childCount) {
                itemContainer.getChildAt(i).visibility = View.GONE
                i++
            }
        }
    }

    override fun openNavigationView() {

    }
}