package ${packageName}.utils.binding

import androidx.databinding.*
import io.reactivex.Observable
import io.reactivex.Observable.create


/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
object BindingObservableUtils {

    fun <T> getFieldObservable(observableField: ObservableField<T>): Observable<T> {
        return create { subscriber ->
            //noinspection AnonymousInnerClass,UnqualifiedInnerClassAccess
            val propertyChangeCallback = object : androidx.databinding.Observable.OnPropertyChangedCallback() {
                override fun onPropertyChanged(observable: androidx.databinding.Observable, i: Int) {
                    subscriber.onNext(observableField.get()!!)
                }
            }
            val value = observableField.get()
            if (null != value) {
                subscriber.onNext(value)
            }

            observableField.addOnPropertyChangedCallback(propertyChangeCallback)
            subscriber.setCancellable({ observableField.removeOnPropertyChangedCallback(propertyChangeCallback) })
        }
    }

    fun <T> getListObservable(list: ObservableList<T>): Observable<List<T>> {
        return create { subscriber ->
            val onListChangedCallback = object : ObservableList.OnListChangedCallback<ObservableList<T>>() {
                override fun onChanged(t: ObservableList<T>) {}

                override fun onItemRangeChanged(t: ObservableList<T>, i: Int, i1: Int) {
                    subscriber.onNext(list)
                }

                override fun onItemRangeInserted(t: ObservableList<T>, i: Int, i1: Int) {
                    subscriber.onNext(list)
                }

                override fun onItemRangeMoved(t: ObservableList<T>, i: Int, i1: Int, i2: Int) {}

                override fun onItemRangeRemoved(t: ObservableList<T>, i: Int, i1: Int) {
                    subscriber.onNext(list)
                }
            }
            list.addOnListChangedCallback(onListChangedCallback)
            subscriber.setCancellable({ list.removeOnListChangedCallback(onListChangedCallback) })
        }
    }

    fun getFieldObservable(observableField: ObservableInt): Observable<Int> {
        return create { subscriber ->
            //noinspection AnonymousInnerClass,UnqualifiedInnerClassAccess
            val propertyChangeCallback = object : androidx.databinding.Observable.OnPropertyChangedCallback() {
                override fun onPropertyChanged(observable: androidx.databinding.Observable, i: Int) {
                    subscriber.onNext(observableField.get())
                }
            }
            subscriber.onNext(observableField.get())

            observableField.addOnPropertyChangedCallback(propertyChangeCallback)
            subscriber.setCancellable({ observableField.removeOnPropertyChangedCallback(propertyChangeCallback) })
        }
    }

    fun getFieldObservable(observableField: ObservableBoolean): Observable<Boolean> {
        return create { subscriber ->
            //noinspection AnonymousInnerClass,UnqualifiedInnerClassAccess
            val propertyChangeCallback = object : androidx.databinding.Observable.OnPropertyChangedCallback() {
                override fun onPropertyChanged(observable: androidx.databinding.Observable, i: Int) {
                    subscriber.onNext(observableField.get())
                }
            }
            subscriber.onNext(observableField.get())

            observableField.addOnPropertyChangedCallback(propertyChangeCallback)
            subscriber.setCancellable({ observableField.removeOnPropertyChangedCallback(propertyChangeCallback) })
        }
    }

    fun getBaseObservable(observableField: BaseObservable): Observable<BaseObservable> {
        return create { subscriber ->
            //noinspection AnonymousInnerClass,UnqualifiedInnerClassAccess
            val propertyChangeCallback = object : androidx.databinding.Observable.OnPropertyChangedCallback() {
                override fun onPropertyChanged(observable: androidx.databinding.Observable, i: Int) {
                    subscriber.onNext(observableField)
                }
            }
            subscriber.onNext(observableField)

            observableField.addOnPropertyChangedCallback(propertyChangeCallback)
            subscriber.setCancellable({ observableField.removeOnPropertyChangedCallback(propertyChangeCallback) })
        }
    }
}


