package ${packageName}.ui.common.delegates.view.toolbar

import android.content.Context
import android.view.View
import androidx.annotation.DrawableRes
import ${packageName}.ui.common.delegates.view.databinding.IDatabindingHandleDelegate
import ${packageName}.ui.common.delegates.vvm.navigation.INavigationDelegate
import ${packageName}.ui.common.view.ToolbarType

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IToolbarDelegate {
    fun initToolbarDelegate(databindingDelegate: IDatabindingHandleDelegate<*, *>, navigationDelegate: INavigationDelegate, toolbarProvider: ToolbarProvider, context: Context)
    fun setupToolbar(toolbarType: ToolbarType)
    fun addToolbarItem(@DrawableRes drawableIcon: Int, onClickListener: View.OnClickListener)
    fun addToolbarItem(view: View)
    fun clearToolbarItems()
    fun hideToolbarItems()
    fun openNavigationView()
    var toolbarType: ToolbarType
}