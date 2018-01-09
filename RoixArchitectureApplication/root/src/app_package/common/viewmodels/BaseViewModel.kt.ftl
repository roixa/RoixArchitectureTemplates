package ${packageName}.ui.common.viewmodels

import android.arch.lifecycle.ViewModel
import android.support.annotation.CallSuper
import ${packageName}.application.CommonApplication
import ${packageName}.utils.rx.general.RxSchedulersAbs

import ${packageName}.ui.common.loading.ILoadingObserver
import io.reactivex.Completable
import io.reactivex.Observable
import io.reactivex.Single
import io.reactivex.disposables.CompositeDisposable
import toothpick.Scope
import toothpick.Toothpick
import toothpick.config.Module
import javax.inject.Inject

/**
 * Created by belyalov on 01.12.2017.
 */
abstract class BaseViewModel : ViewModel() {

    private var viewsCount = 0
	
    protected val subscription: CompositeDisposable = CompositeDisposable()

    protected abstract fun getModule(): Module

	private lateinit var viewModelScope: Scope

    @Inject lateinit var rxScheduler: RxSchedulersAbs

	@CallSuper
    open fun onBindView(application : CommonApplication) {
	   proceedInject(application)
        if (viewsCount == 0) {
            onBindFirstView()
        }
        viewsCount++
    }

    @CallSuper
    protected open fun onBindFirstView() {
        onBindFirstView(subscription)
    }
	
	protected open fun proceedInject(application: CommonApplication) {
        viewModelScope = Toothpick.openScopes(application, this)
        viewModelScope.installModules(getModule())
        Toothpick.inject(this, viewModelScope)
    }



    protected open fun onBindFirstView(subscription: CompositeDisposable) {}

    @CallSuper
    override fun onCleared() {
        super.onCleared()
        subscription.dispose()
		Toothpick.closeScope(viewModelScope)

    }

    open fun <T> Observable<T>.withDefaultShedulers(): Observable<T> {
        return compose(rxScheduler.getIOToMainTransformer())
    }

    open fun Completable.withDefaultShedulers(): Completable{
        return compose(rxScheduler.getIoToMainTransformerCompletable())
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
