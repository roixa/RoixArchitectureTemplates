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
import android.support.annotation.CallSuper


/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

abstract class BaseListViewModel <Item> : BaseLifecycleViewModel() {

    val items: ObservableList<Item> = ObservableArrayList<Item>()


    protected abstract fun getInteractor(): IBaseListInteractor<Item>

    override fun onBindFirstView() {
        super.onBindFirstView()
        loadNextItems().sub { l ->
            items.addAll(l)
        }
    }

    @CallSuper
    open fun refresh() {
        loadNextItems().sub { list ->
            items.clear()
            items.addAll(list)
        }
    }

    protected fun loadNextItems(): Single<List<Item>> {
            return getInteractor()
                    .loadItems(0)
    }


}
