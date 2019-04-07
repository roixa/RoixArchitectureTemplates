package ${packageName}.ui.common.adapters

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.databinding.DataBindingUtil
import androidx.databinding.ViewDataBinding
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.RecyclerView
import ${packageName}.BR

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class BaseDataBindingAdapter<Item, DataBinding : ViewDataBinding>(val layoutId: Int)
    : RecyclerView.Adapter<BaseDataBindingAdapter.VHolder<DataBinding>>() {

    var data = listOf<Item>()

    override fun getItemCount(): Int = data.size

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VHolder<DataBinding> {
        val binding = DataBindingUtil.inflate<DataBinding>(LayoutInflater.from(parent.context), layoutId, parent, false)
        return VHolder(binding)
    }

    override fun onBindViewHolder(holder: VHolder<DataBinding>, position: Int) {
        holder.dataBinding.setVariable(BR.item, data[position])
    }

    fun update(newData: List<Item>) {
        val diffResult = DiffUtil.calculateDiff(ItemDiffCallback(data, newData))
        diffResult.dispatchUpdatesTo(this)
        data = newData
    }

    class VHolder<DataBinding : ViewDataBinding>(val dataBinding: DataBinding) : RecyclerView.ViewHolder(dataBinding.root)

    private class ItemDiffCallback<Item>(val oldList: List<Item>, val newList: List<Item>) : DiffUtil.Callback() {

        override fun areItemsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean = oldList[oldItemPosition] == newList[newItemPosition]

        //TODO maybe add item interface with 2 methods
        override fun areContentsTheSame(oldItemPosition: Int, newItemPosition: Int): Boolean = oldList[oldItemPosition] == newList[newItemPosition]

        override fun getOldListSize(): Int = oldList.size

        override fun getNewListSize(): Int = newList.size
    }

}
