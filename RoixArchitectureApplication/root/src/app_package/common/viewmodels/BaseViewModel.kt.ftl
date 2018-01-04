package ${packageName}.ui.common.viewmodels

import android.arch.lifecycle.ViewModel
import android.support.annotation.CallSuper
import ${packageName}.application.CommonApplication
import ${packageName}.dagger.common.AppComponent
import ${packageName}.ui.common.loading.ILoadingObserver
import io.reactivex.Completable
import io.reactivex.Observable
import io.reactivex.Single
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.disposables.CompositeDisposable
import io.reactivex.schedulers.Schedulers

/**
 * Created by belyalov on 01.12.2017.
 */
abstract class BaseViewModel : ViewModel() {

    private var viewsCount = 0
    protected val subscription: CompositeDisposable = CompositeDisposable()

    abstract fun doInject(appComponent: AppComponent)

    //TODO maybe create more correct inject
    init {
        doInject(CommonApplication.appComponent)
    }

    @CallSuper
    open fun onBindView() {
        if (viewsCount == 0) {
            onBindFirstView()
        }
        viewsCount++
    }

    @CallSuper
    protected open fun onBindFirstView() {
        onBindFirstView(subscription)
    }

    protected open fun onBindFirstView(subscription: CompositeDisposable) {}

    @CallSuper
    override fun onCleared() {
        super.onCleared()
        subscription.dispose()
    }

    open fun <T> Observable<T>.withDefaultShedulers(): Observable<T> {
        return subscribeOn(Schedulers.io()).
                observeOn(AndroidSchedulers.mainThread())
    }

    open fun Completable.withDefaultShedulers(): Completable{
        return subscribeOn(Schedulers.io()).
                observeOn(AndroidSchedulers.mainThread())
    }

    fun <T> Observable<T>.withLoadingHandle(loading: ILoadingObserver): Observable<T> {
        return doOnSubscribe({
            loading.onStartLoad()
        }).doAfterTerminate({
            loading.onEndLoad()
        })
    }

    fun Completable.withLoadingHandle(loading: ILoadingObserver): Completable {
        return doOnSubscribe({
            loading.onStartLoad()
        }).doAfterTerminate({
            loading.onEndLoad()
        })
    }

    abstract fun <T> Observable<T>.withDefaultLoadingHandle(): Observable<T>

    abstract fun <T> Observable<T>.defaultErrorHandle(error: Throwable)

    fun <T> Observable<T>.sub(function: (T) -> Unit) {
        subscription.add(
                withDefaultLoadingHandle().
                        withDefaultShedulers().
                        subscribe({ T ->
                            function.invoke(T)
                        }, { t -> defaultErrorHandle(t) })
        )
    }

    fun <T> Single<T>.sub(function: (T) -> Unit) = this.toObservable().sub { T -> function.invoke(T) }
}
