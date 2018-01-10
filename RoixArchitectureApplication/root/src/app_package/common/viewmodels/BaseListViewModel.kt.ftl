package ${packageName}.ui.common.viewmodels

import android.databinding.ObservableArrayList
import android.databinding.ObservableField
import android.databinding.ObservableList
import android.databinding.ViewDataBinding
import android.support.v4.widget.SwipeRefreshLayout
import android.support.v7.widget.LinearLayoutManager
import android.support.v7.widget.RecyclerView
import ${packageName}.buissness.common.IBaseListInteractor
import ${packageName}.ui.common.adapters.BaseObservableAdapter
import io.reactivex.Single

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

abstract class BaseListViewModel<Item> : BaseDatabindingViewModel() {

    val items: ObservableList<Item> = ObservableArrayList<Item>()

    private var mNextPage: Int = getMinPage()

    enum class StateList {
        EMPTY, EMPTY_PROGRESS, EMPTY_ERROR, EMPTY_DATA, DATA, PAGE_PROGRESS, ALL_DATA, PAGE_ERROR, REFRESH
    }

    val stateList = ObservableField<StateList>(StateList.EMPTY)

    protected abstract fun getInteractor(): IBaseListInteractor<Item>

    open fun <ItemDataBinding : ViewDataBinding> setupRecyclerView(recyclerView: RecyclerView,
                                                                   baseAdapter: BaseObservableAdapter<Item, ItemDataBinding>,
                                                                   swipeToRefreshLayout: SwipeRefreshLayout?) {
        recyclerView.apply {
            val manager = LinearLayoutManager(context)
            layoutManager = manager
            adapter = baseAdapter
            addOnScrollListener(PaginationScrollListener(manager))
            swipeToRefreshLayout?.setOnRefreshListener(SwipeToRefreshListListener())
        }
    }

    override fun onBindFirstView() {
        super.onBindFirstView()
        if (items.isEmpty()) {
            stateList.set(StateList.EMPTY_PROGRESS)
        } else {
            stateList.set(StateList.PAGE_PROGRESS)
        }
        loadNextItems().subList { l ->
            items.addAll(l)
            stateList.set(StateList.DATA)
        }
    }

    //override if needs
    protected open fun getNextPage(lastItem: Item): Int = mNextPage + 1

    //override if needs
    protected open fun getMinPage(): Int = 1

    //override if needs
    protected open fun getMaxPage(): Int = Int.MAX_VALUE

    protected open fun isLoading(): Boolean = stateList.get().equals(StateList.EMPTY_PROGRESS) || stateList.get().equals(StateList.PAGE_PROGRESS)

    protected open fun isLastPage(): Boolean = mNextPage > getMaxPage()

    fun refresh() {
        mNextPage = getMinPage()
        stateList.set(StateList.REFRESH)
        loadNextItems().subList { list ->
            items.clear()
            items.addAll(list)
            if (items.isEmpty()) {
                stateList.set(StateList.EMPTY_DATA)
            } else {
                stateList.set(StateList.DATA)
            }
        }
    }

    protected fun loadNextItems(): Single<List<Item>> {
        if (isLastPage()) {
            return Single.create({ e ->
                stateList.set(StateList.ALL_DATA)
                e.onSuccess(emptyList())
            })
        } else {
            return getInteractor()
                    .loadItems(mNextPage)
                    .map { t ->
                        val item = t.last()
                        mNextPage = getNextPage(item)
                        return@map t
                    }
        }
    }


    private fun <T> Single<T>.subList(function: (T) -> Unit) {
        subscription.add(
                toObservable()
                        .withDefaultShedulers()
                        .subscribe({ t ->
                            function.invoke(t)
                        }, { e ->
                            listErrorHandle(e)
                        })
        )
    }

    private fun listErrorHandle(error: Throwable) {
        if (items.isEmpty()) {
            stateList.set(StateList.EMPTY_ERROR)
        } else {
            stateList.set(StateList.PAGE_ERROR)
        }
    }

    private inner class PaginationScrollListener(val layoutManager: LinearLayoutManager) : RecyclerView.OnScrollListener() {

        override fun onScrolled(recyclerView: RecyclerView?, dx: Int, dy: Int) {
            super.onScrolled(recyclerView, dx, dy)
            val visibleItemCount = layoutManager.childCount
            val totalItemCount = layoutManager.itemCount
            val firstVisibleItemPosition = layoutManager.findFirstVisibleItemPosition()
            if (!isLoading() && !isLastPage()) {
                if ((visibleItemCount + firstVisibleItemPosition) >= totalItemCount
                        && firstVisibleItemPosition >= 0) {
                    if (items.isEmpty()) {
                        stateList.set(StateList.EMPTY_PROGRESS)
                    } else {
                        stateList.set(StateList.PAGE_PROGRESS)
                    }
                    loadNextItems().subList { list ->
                        items.addAll(list)
                        if (items.isEmpty()) {
                            stateList.set(StateList.EMPTY_DATA)
                        } else {
                            stateList.set(StateList.DATA)
                        }
                    }
                }
            }

        }
    }

    private inner class SwipeToRefreshListListener : SwipeRefreshLayout.OnRefreshListener {
        override fun onRefresh() {
            refresh()
        }
    }
}
