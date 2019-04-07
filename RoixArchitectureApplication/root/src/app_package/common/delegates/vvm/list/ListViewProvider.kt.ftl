package ${packageName}.ui.common.delegates.vvm.list

import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface ListViewProvider {
    val itemLayoutId: Int
    fun getRecyclerView(): RecyclerView
    fun getSwipeToRefreshLayout(): SwipeRefreshLayout?
}