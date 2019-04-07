package ${packageName}.ui.common.fragments

import android.content.Context
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.ViewDataBinding
import androidx.fragment.app.Fragment
import ${packageName}.ui.common.delegates.view.databinding.DatabindingHandleDelegate
import ${packageName}.ui.common.delegates.view.databinding.IDatabindingHandleDelegate
import ${packageName}.ui.common.delegates.view.databinding.LayoutIdProvider
import ${packageName}.ui.common.delegates.view.sub_livedata.ILiveDataSubscriptionDelegate
import ${packageName}.ui.common.delegates.view.sub_livedata.LiveDataSubscriptionDelegate
import ${packageName}.ui.common.delegates.view.toolbar.IToolbarDelegate
import ${packageName}.ui.common.delegates.view.toolbar.ToolbarDelegate
import ${packageName}.ui.common.delegates.view.toolbar.ToolbarProvider
import ${packageName}.ui.common.delegates.vvm.core.IViewModelHandleDelegate
import ${packageName}.ui.common.delegates.vvm.core.ViewModelHandleDelegate
import ${packageName}.ui.common.delegates.vvm.error.ErrorHandleViewDelegate
import ${packageName}.ui.common.delegates.vvm.error.IErrorHandleViewDelegate
import ${packageName}.ui.common.delegates.vvm.list.IListHandleViewDelegate
import ${packageName}.ui.common.delegates.vvm.list.ListHandleViewDelagate
import ${packageName}.ui.common.delegates.vvm.list.ListViewProvider
import ${packageName}.ui.common.delegates.vvm.loading.ILoadingHandleDelegate
import ${packageName}.ui.common.delegates.vvm.loading.LoadingHandleDelegate
import ${packageName}.ui.common.delegates.vvm.message.IShowMessageDelegate
import ${packageName}.ui.common.delegates.vvm.message.ShowMessageDelegate
import ${packageName}.ui.common.delegates.vvm.navigation.INavigationDelegate
import ${packageName}.ui.common.delegates.vvm.navigation.NavigationDelegate
import ${packageName}.ui.common.viewmodels.BaseListViewModel
import java.lang.reflect.ParameterizedType

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

abstract class BaseToolbarListFragment<ViewModel : BaseListViewModel<Item>, DataBinding : ViewDataBinding, Item, ItemDataBinding : ViewDataBinding> : Fragment()
        , LayoutIdProvider
        , ToolbarProvider
        , ListViewProvider
        , IDatabindingHandleDelegate<DataBinding, ViewModel> by DatabindingHandleDelegate()
        , ILiveDataSubscriptionDelegate by LiveDataSubscriptionDelegate()
        , IErrorHandleViewDelegate by ErrorHandleViewDelegate()
        , IShowMessageDelegate by ShowMessageDelegate()
        , ILoadingHandleDelegate by LoadingHandleDelegate()
        , IViewModelHandleDelegate<ViewModel> by ViewModelHandleDelegate<ViewModel>()
        , INavigationDelegate by NavigationDelegate()
        , IToolbarDelegate by ToolbarDelegate()
        , IListHandleViewDelegate<Item> by ListHandleViewDelagate<Item, ItemDataBinding>() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        initViewModel(activity as AppCompatActivity, getViewModelJavaClass())
        initLoadingHandle(this, viewModel)

        initLiveDataSubscription(this)
        initErrorHandle(this, viewModel)
        initShowMessageHandle(activity!!, this, viewModel)

    }

    open fun setupBinding() {}

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        viewModel.onBindView(activity!!.application)
        setupUi()
        val ret = initBinding(activity as AppCompatActivity, layoutId, inflater, container, viewModel).root
        initToolbarDelegate(this, this, this, activity as Context)
        return ret
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        initNavigationHandle(view, this, viewModel)
        initListHandle(this, this, viewModel)
        setupBinding()
    }

    protected open fun setupUi() {

    }

    private fun getViewModelJavaClass(): Class<ViewModel> {
        return (this.javaClass.genericSuperclass as ParameterizedType).actualTypeArguments[0] as Class<ViewModel>
    }

}