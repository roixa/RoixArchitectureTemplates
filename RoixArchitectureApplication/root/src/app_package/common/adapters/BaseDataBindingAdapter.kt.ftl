package ${packageName}.ui.common.adapters

import android.databinding.DataBindingUtil
import android.databinding.ViewDataBinding
import android.support.annotation.LayoutRes
import android.support.v7.widget.RecyclerView
import android.view.LayoutInflater
import android.view.ViewGroup

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseDataBindingAdapter<DataBinding : ViewDataBinding>
    : RecyclerView.Adapter<BaseDataBindingAdapter.VHolder<DataBinding>>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VHolder<DataBinding> {
        val binding = DataBindingUtil.inflate<DataBinding>(LayoutInflater.from(parent.context), getLayoutId(viewType), parent, false)
        return VHolder(binding)
    }

    override fun onBindViewHolder(holder: VHolder<DataBinding>, position: Int) {
        onBindDataBinding(holder.mDataBinding, position)
    }

    @LayoutRes
    protected abstract fun getLayoutId(viewType: Int): Int

    protected abstract fun onBindDataBinding(dataBinding: DataBinding, position: Int)

    class VHolder<DataBinding : ViewDataBinding>(val mDataBinding: DataBinding) : RecyclerView.ViewHolder(mDataBinding.root)
}
