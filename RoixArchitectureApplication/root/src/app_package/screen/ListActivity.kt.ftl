package ${packageName}.ui.${screenPackage}.views

import android.support.v4.widget.SwipeRefreshLayout
import android.support.v7.widget.RecyclerView
import android.support.v7.widget.Toolbar
import ${packageName}.R
import ${packageName}.data.models.${itemName}Item
import ${packageName}.databinding.Activity${screenName}Binding
import ${packageName}.databinding.Item${itemName}Binding
import ${packageName}.ui.common.activities.BaseListActivity
import ${packageName}.ui.common.view.ToolbarType
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel


/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Activity : BaseListActivity<${screenName}ViewModel, Activity${screenName}Binding,Item${itemName}Binding, ${itemName}Item>() {


    override fun getRecyclerView(): RecyclerView = binding.rv

    override fun getSwipeToRefreshLayout(): SwipeRefreshLayout? = binding.srl

    override fun getToolbar(): Toolbar? = binding.toolbar.tb

    override fun getLayoutId(): Int = R.layout.activity_${screenPackage}

    override fun getItemLayoutId(): Int = R.layout.item_${itemPackage}

}

