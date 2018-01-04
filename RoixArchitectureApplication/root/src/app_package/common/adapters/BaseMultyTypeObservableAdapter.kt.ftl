package ${packageName}.ui.common.adapters

import android.databinding.ObservableList
import android.databinding.ViewDataBinding
import android.support.v7.widget.RecyclerView
import java.lang.ref.WeakReference

/**
 * Created by roix on 27.12.2017.
 */

abstract class BaseMultyTypeObservableAdapter<Item, DataBinding : ViewDataBinding>(protected val mItems: ObservableList<Item>)
    : BaseDataBindingAdapter<DataBinding>(), DataChangedListener {

    init {
        initListObservable(mItems)
    }

    private fun initListObservable(items: ObservableList<Item>) {
        items.addOnListChangedCallback(BaseOnListChangedCallback(items, this))
    }

    override fun adapterNotifyItemRangeChanged(positionStart: Int, itemCount: Int) {
        notifyItemRangeChanged(positionStart, itemCount)
    }

    override fun adapterNotifyItemRangeInserted(positionStart: Int, itemCount: Int) {
        notifyItemRangeInserted(positionStart, itemCount)
    }

    override fun adapterNotifyItemRangeRemoved(fromPosition: Int, itemCount: Int) {
        notifyItemRangeRemoved(fromPosition, itemCount)
    }

    private class BaseOnListChangedCallback<Item> internal constructor(private val mItems: ObservableList<Item>, adapter: RecyclerView.Adapter<*>) : ObservableList.OnListChangedCallback<ObservableList<Item>>() {
        private val mAdapter: WeakReference<RecyclerView.Adapter<*>>

        private val adapter: RecyclerView.Adapter<*>?
            get() {
                val adapter = mAdapter.get()
                if (null == adapter) {
                    mItems.removeOnListChangedCallback(this)
                }
                return adapter
            }

        init {
            mAdapter = WeakReference(adapter)
        }

        override fun onChanged(sender: ObservableList<Item>) {
            val adapter = adapter
            adapter?.notifyDataSetChanged()
        }

        override fun onItemRangeChanged(sender: ObservableList<Item>, positionStart: Int, itemCount: Int) {
            val adapter = adapter
            if (adapter is DataChangedListener) {
                (adapter as DataChangedListener).adapterNotifyItemRangeChanged(positionStart, itemCount)
            }
        }

        override fun onItemRangeInserted(sender: ObservableList<Item>, positionStart: Int, itemCount: Int) {
            val adapter = adapter
            if (adapter is DataChangedListener) {
                (adapter as DataChangedListener).adapterNotifyItemRangeInserted(positionStart, itemCount)
            }
        }

        override fun onItemRangeMoved(sender: ObservableList<Item>, fromPosition: Int, toPosition: Int, itemCount: Int) {
            val adapter = adapter
            if (adapter is DataChangedListener) {
                (adapter as DataChangedListener).adapterNotifyItemRangeRemoved(fromPosition, itemCount)
                (adapter as DataChangedListener).adapterNotifyItemRangeInserted(toPosition, itemCount)
            }
        }

        override fun onItemRangeRemoved(sender: ObservableList<Item>, positionStart: Int, itemCount: Int) {
            val adapter = adapter
            if (adapter is DataChangedListener) {
                (adapter as DataChangedListener).adapterNotifyItemRangeRemoved(positionStart, itemCount)
            }
        }
    }
}
