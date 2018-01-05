package ${packageName}.ui.main.views

import android.support.v4.widget.SwipeRefreshLayout
import android.support.v7.widget.RecyclerView
import android.support.v7.widget.Toolbar
import com.roix.mvvm_archtecture_sample.R
import com.roix.mvvm_archtecture_sample.data.models.ThreadItem
import ${packageName}.databinding.ActivityMainBinding
import ${packageName}.databinding.ItemThreadBinding
import ${packageName}.ui.common.activities.BaseListActivity
import ${packageName}.roix.mvvm_.ui.common.view.ToolbarType
import ${packageName}.ui.main.viewmodels.MainViewModel


class MainActivity : BaseListActivity<MainViewModel, ActivityMainBinding,ItemThreadBinding, ThreadItem>() {


    override fun getRecyclerView(): RecyclerView = binding.rv

    override fun getSwipeToRefreshLayout(): SwipeRefreshLayout? = binding.srl

    override fun getToolbar(): Toolbar? = binding.toolbar.tb

    override fun getLayoutId(): Int = R.layout.activity_main

    override fun getItemLayoutId(): Int = R.layout.item_thread

}

