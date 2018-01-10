package ${packageName}.ui.common.viewmodels

import android.arch.lifecycle.LiveData
import android.arch.lifecycle.MutableLiveData
import ${packageName}.ui.common.loading.LoadingLiveData
import io.reactivex.Flowable
import io.reactivex.Observable
import io.reactivex.Single

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseLifecycleViewModel : BaseViewModel() {

    val loadingLiveData: LoadingLiveData = LoadingLiveData()
    val errorLiveData: MutableLiveData<Throwable> = MutableLiveData()
    val showMessageDialogLiveData: MutableLiveData<String> = MutableLiveData()

    override fun <T> Observable<T>.withDefaultLoadingHandle(): Observable<T> {
        return withLoadingHandle(loadingLiveData)
    }

    override fun <T> Observable<T>.defaultErrorHandle(error: Throwable) {
        errorLiveData.postValue(error)
    }

    fun <T> subInLiveDataFun(observable: Observable<T>): LiveData<T> {
        val ret = MutableLiveData<T>()
        observable.sub { t ->
            ret.value = t
        }
        return ret
    }

    fun <T>MutableLiveData<T>.setValueNoHistory(t:T){
        value=(t)
        value=(null)
    }

    fun <T> Observable<T>.subInLiveData(): LiveData<T> = this@BaseLifecycleViewModel.subInLiveDataFun(this)

    fun <T> Single<T>.subInLiveData(): LiveData<T> = this@BaseLifecycleViewModel.subInLiveDataFun(this.toObservable())

    fun <T> Flowable<T>.subInLiveData(): LiveData<T> = this@BaseLifecycleViewModel.subInLiveDataFun(this.toObservable())
}
