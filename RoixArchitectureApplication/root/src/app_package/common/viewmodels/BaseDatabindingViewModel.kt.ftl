package ${packageName}.ui.common.viewmodels

import android.databinding.ObservableField
import io.reactivex.Flowable
import io.reactivex.Observable
import io.reactivex.Single

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseDatabindingViewModel: BaseLifecycleViewModel() {

    fun <T> Observable<T>.subInObserverbleField(): ObservableField<T> {
        val ret = ObservableField<T>()
        sub { t ->
            ret.set(t)
        }
        return ret
    }

    fun <T> Single<T>.subInObserverbleField(): ObservableField<T> = toObservable().subInObserverbleField()

    fun <T> Flowable<T>.subInObserverbleField(): ObservableField<T> = toObservable().subInObserverbleField()

}
