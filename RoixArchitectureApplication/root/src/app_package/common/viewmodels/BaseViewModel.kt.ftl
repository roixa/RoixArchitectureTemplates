package ${packageName}.ui.common.viewmodels

import android.app.Application
import androidx.annotation.CallSuper
import androidx.lifecycle.ViewModel
import ${packageName}.application.CommonApplication
import ${packageName}.ui.common.delegates.viewmodel.di_toothpick.DIToothpickDelegate
import ${packageName}.ui.common.delegates.viewmodel.di_toothpick.IDIDelegate
import ${packageName}.ui.common.delegates.viewmodel.di_toothpick.ModuleProvider
import ${packageName}.ui.common.delegates.viewmodel.sub_rx.IRxSubscriptionDelegate
import ${packageName}.ui.common.delegates.viewmodel.sub_rx.RxSubscriptionDelegate
import ${packageName}.ui.common.delegates.vvm.error.ErrorHandleViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.error.IErrorHandleViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.loading.ILoadingViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.loading.LoadingViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.message.IShowMessageHandleViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.message.ShowMessageHandleViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.navigation.IViewModelNavigationDelegate
import ${packageName}.ui.common.delegates.vvm.navigation.ViewModelNavigationDelegate
import ${packageName}.utils.rx.general.RxSchedulersAbs
import javax.inject.Inject

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseViewModel : ViewModel()
//        , IViewModelLyfecycleDelegate by ViewModelLifecycleDelegate()
        , IErrorHandleViewModelDelegate by ErrorHandleViewModelDelegate()
        , IShowMessageHandleViewModelDelegate by ShowMessageHandleViewModelDelegate()
        , ILoadingViewModelDelegate by LoadingViewModelDelegate()
        , IRxSubscriptionDelegate by RxSubscriptionDelegate()
        , IDIDelegate by DIToothpickDelegate()
        , IViewModelNavigationDelegate by ViewModelNavigationDelegate()
        , ModuleProvider {

    @Inject
    lateinit var rxScheduler: RxSchedulersAbs

    private var viewsCount = 0

    @CallSuper
    fun onBindView(application: Application) {
        if (viewsCount == 0) {
            onBindFirstView(application)
        }
        viewsCount++
    }

    @CallSuper
    open fun onBindFirstView() {

    }

    @CallSuper
    fun onBindFirstView(application: Application) {
        initDIDelegate(application as CommonApplication, this, this)
        initSubscriptionDelegate(rxScheduler, this, this)
        onBindFirstView()
    }


    @CallSuper
    override fun onCleared() {
        super.onCleared()
        clearRxSubsctiptionDelegate()
        clearDiDelegate()
    }

}
