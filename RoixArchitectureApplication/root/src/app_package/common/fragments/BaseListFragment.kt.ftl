package ${packageName}.ui.common.fragments

import android.databinding.ViewDataBinding
import android.support.annotation.LayoutRes
import android.support.v4.widget.SwipeRefreshLayout
import android.support.v7.widget.RecyclerView
import ${packageName}.ui.common.adapters.BaseObservableAdapter
import ${packageName}.ui.common.viewmodels.BaseListViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseListFragment<ViewModel : BaseListViewModel<Item>, DataBinding : ViewDataBinding, ItemDataBinding : ViewDataBinding, Item>
    : BaseDatabindingFragment<ViewModel, DataBinding>() {

    @LayoutRes
    protected abstract fun getItemLayoutId(): Int

    protected abstract fun getRecyclerView(): RecyclerView

    protected abstract fun getSwipeToRefreshLayout(): SwipeRefreshLayout?

    override fun setupUi() {
        super.setupUi()
        viewModel.setupRecyclerView(getRecyclerView(),
                BaseObservableAdapter<Item, ItemDataBinding>(viewModel.items, getItemLayoutId()),
                getSwipeToRefreshLayout()
        )
    }

}