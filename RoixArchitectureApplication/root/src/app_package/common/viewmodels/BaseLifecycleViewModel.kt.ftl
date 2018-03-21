package ${packageName}.ui.common.viewmodels

import android.arch.lifecycle.LiveData
import android.arch.lifecycle.LiveDataReactiveStreams
import android.arch.lifecycle.MutableLiveData
import ${packageName}.ui.common.loading.LoadingLiveData
import io.reactivex.*
import ru.terrakok.cicerone.NavigatorHolder
import ru.terrakok.cicerone.Router
import javax.inject.Inject


/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseLifecycleViewModel : BaseViewModel() {

    val loadingLiveData: LoadingLiveData = LoadingLiveData()
    val errorLiveData: MutableLiveData<Throwable> = MutableLiveData()
    val showMessageDialogLiveData: MutableLiveData<String> = MutableLiveData()

    @Inject lateinit var navigatorHolder: NavigatorHolder
    @Inject lateinit var router: Router

    override fun <T> Observable<T>.withDefaultLoadingHandle(): Observable<T> {
        return withLoadingHandle(loadingLiveData)
    }

    fun Completable.withDefaultLoadingHandle(): Completable {
        return withLoadingHandle(loadingLiveData)
    }


    override fun <T> Observable<T>.defaultErrorHandle(error: Throwable) {
        errorLiveData.postValue(error)
    }

    fun Completable.defaultErrorHandle(error: Throwable) {
        errorLiveData.postValue(error)
    }


    fun <T> toLiveDataFun(observable: Observable<T>): LiveData<T> = LiveDataReactiveStreams.fromPublisher(
            observable
                    .withDefaultLoadingHandle()
                    .withDefaultShedulers()
                    .onErrorResumeNext { t: Throwable ->
                        errorLiveData.postValue(t)
                        loadingLiveData.onEndLoad()
                        return@onErrorResumeNext Observable.never<T>()
                    }.toFlowable(BackpressureStrategy.BUFFER))

    fun toLiveDataFun(observable: Completable): LiveData<Boolean> = LiveDataReactiveStreams.fromPublisher(
            observable
                    .withDefaultLoadingHandle()
                    .withDefaultShedulers()
                    .onErrorResumeNext { t: Throwable ->
                        errorLiveData.postValue(t)
                        loadingLiveData.onEndLoad()
                        return@onErrorResumeNext Completable.never()
                    }.toFlowable())

    fun <T> MutableLiveData<T>.setValueNoHistory(t: T) {
        value = (t)
        value = (null)
    }

    fun Completable.sub(function: () -> Unit) {
        subscription.add(
                withDefaultLoadingHandle().
                        withDefaultShedulers().
                        subscribe({
                            function.invoke()
                        }, { t -> defaultErrorHandle(t) })
        )

    }


    fun <T> Observable<T>.toLiveData(): LiveData<T> = this@BaseLifecycleViewModel.toLiveDataFun(this)

    fun <T> Single<T>.toLiveData(): LiveData<T> = this@BaseLifecycleViewModel.toLiveDataFun(this.toObservable())

    fun <T> Flowable<T>.toLiveData(): LiveData<T> = this@BaseLifecycleViewModel.toLiveDataFun(this.toObservable())

    fun <T> Completable.toLiveData(): LiveData<T> = this@BaseLifecycleViewModel.toLiveDataFun(this.toObservable())

}
