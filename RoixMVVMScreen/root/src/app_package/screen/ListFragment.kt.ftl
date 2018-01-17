package ${packageName}.ui.${screenPackage}.views

import android.support.v4.widget.SwipeRefreshLayout
import android.support.v7.widget.RecyclerView
import ${packageName}.R
import ${packageName}.data.models.${itemName}Item
import ${packageName}.databinding.Fragment${screenName}Binding
import ${packageName}.databinding.Item${itemName}Binding
import ${packageName}.ui.common.fragments.BaseListFragment
import ${packageName}.ui.common.view.ToolbarType
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ${screenName}Fragment : BaseListFragment<${screenName}ViewModel, Fragment${screenName}Binding,Item${itemName}Binding, ${itemName}Item>() {


    override fun getRecyclerView(): RecyclerView = binding.rv

    override fun getSwipeToRefreshLayout(): SwipeRefreshLayout? = binding.srl

    override fun getLayoutId(): Int = R.layout.fragment_${screenPackage}

    override fun getItemLayoutId(): Int = R.layout.item_${itemPackage}

}

