package ${packageName}.ui.common.adapters

import android.databinding.ObservableList
import android.databinding.ViewDataBinding
import android.support.annotation.LayoutRes
import ${packageName}.BR

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class BaseObservableAdapter<Item, DataBinding : ViewDataBinding>(items: ObservableList<Item>, val layoutId: Int)
    : BaseMultyTypeObservableAdapter<Item, DataBinding>(items) {

    override fun getItemCount(): Int = mItems.size

    override fun onBindDataBinding(dataBinding: DataBinding, position: Int) {
        onBindDataBinding(dataBinding, mItems.get(position))
    }

    protected fun onBindDataBinding(dataBinding: DataBinding, item: Item) {
        dataBinding.setVariable(BR.item, item)
    }

    fun getItem(position: Int): Item {
        return mItems.get(position)
    }

    @LayoutRes
    override fun getLayoutId(viewType: Int): Int {
        return layoutId
    }
}
