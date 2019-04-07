package ${packageName}.ui.common.delegates.viewmodel.sub_rx

import ${packageName}.ui.common.delegates.vvm.error.IErrorHandleViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.loading.ILoadingViewModelDelegate
import ${packageName}.utils.rx.general.RxSchedulersAbs
import io.reactivex.Completable
import io.reactivex.Observable
import io.reactivex.Single
import io.reactivex.disposables.CompositeDisposable

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IRxSubscriptionDelegate {
    fun initSubscriptionDelegate(rxScheduler: RxSchedulersAbs, loading: ILoadingViewModelDelegate, error: IErrorHandleViewModelDelegate)
    fun onBindFirstView(subscription: CompositeDisposable)
    fun <T> Observable<T>.withDefaultShedulers(): Observable<T>
    fun Completable.withDefaultShedulers(): Completable
    fun <T> Observable<T>.withLoadingHandle(): Observable<T>
    fun Completable.withLoadingHandle(): Completable
    fun <T> Observable<T>.sub(function: (T) -> Unit)
    fun <T> Single<T>.sub(function: (T) -> Unit)
    fun <T>sub(function: (T) -> Unit, single: Single<T>)

    fun Completable.sub(function: () -> Unit)
    fun clearRxSubsctiptionDelegate()

}