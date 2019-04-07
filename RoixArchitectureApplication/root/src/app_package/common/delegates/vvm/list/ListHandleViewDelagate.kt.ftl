package ${packageName}.ui.common.delegates.vvm.list

import androidx.databinding.ViewDataBinding
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout
import ${packageName}.ui.common.adapters.BaseDataBindingAdapter
import ${packageName}.ui.common.delegates.view.sub_livedata.ILiveDataSubscriptionDelegate

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ListHandleViewDelagate<Item, ItemDataBinding : ViewDataBinding> : IListHandleViewDelegate<Item> {

    private lateinit var viewModel: IListHandleViewModelDelegate<Item>
    private lateinit var databindingAdapter: BaseDataBindingAdapter<Item, ItemDataBinding>

    override fun initListHandle(viewProvider: ListViewProvider, subscription: ILiveDataSubscriptionDelegate, source: IListHandleViewModelDelegate<Item>) {
        viewModel = source
        viewProvider.getRecyclerView().apply {
            val manager = LinearLayoutManager(context)
            layoutManager = manager
            databindingAdapter = BaseDataBindingAdapter(viewProvider.itemLayoutId)
            adapter = databindingAdapter
            viewProvider.getSwipeToRefreshLayout()?.setOnRefreshListener(SwipeToRefreshListListener())
        }
        subscription.apply {
            source.items.sub {
                databindingAdapter.update(it)
            }
        }


    }

    private inner class SwipeToRefreshListListener : SwipeRefreshLayout.OnRefreshListener {
        override fun onRefresh() {
            viewModel.refresh()
        }
    }

}