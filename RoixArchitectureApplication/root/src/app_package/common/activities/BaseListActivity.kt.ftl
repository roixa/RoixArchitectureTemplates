package ${packageName}.ui.common.activities

import android.databinding.ViewDataBinding
import android.support.annotation.LayoutRes
import android.support.v4.widget.SwipeRefreshLayout
import android.support.v7.widget.RecyclerView
import ${packageName}.ui.common.adapters.BaseObservableAdapter
import ${packageName}.ui.common.viewmodels.BaseListViewModel

/**
 * Created by roix on 27.12.2017.
 */
abstract class BaseListActivity<ViewModel : BaseListViewModel<Item>, DataBinding : ViewDataBinding, ItemDataBinding : ViewDataBinding, Item>
    : BaseToolbarActivity<ViewModel, DataBinding>() {


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
