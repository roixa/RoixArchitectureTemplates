package ${packageName}.ui.common.adapters

/**
 * Created by roix on 27.12.2017.
 */

interface DataChangedListener {
    fun adapterNotifyItemRangeChanged(positionStart: Int, itemCount: Int)

    fun adapterNotifyItemRangeInserted(positionStart: Int, itemCount: Int)

    fun adapterNotifyItemRangeRemoved(fromPosition: Int, itemCount: Int)
}
