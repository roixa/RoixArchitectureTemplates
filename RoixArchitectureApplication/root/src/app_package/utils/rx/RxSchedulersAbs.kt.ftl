package ${packageName}.utils.rx.general

import io.reactivex.*

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class RxSchedulersAbs {

    abstract val mainThreadScheduler: Scheduler

    abstract val ioScheduler: Scheduler

    abstract val computationScheduler: Scheduler

    fun getIoToMainTransformerCompletable(): CompletableTransformer {
        return CompletableTransformer { objectObservable ->
            objectObservable
                    .subscribeOn(ioScheduler)
                    .observeOn(mainThreadScheduler)
        }
    }

    fun <T> getIOToMainTransformer(): ObservableTransformer<T, T> {
        return ObservableTransformer { objectObservable ->
            objectObservable
                    .subscribeOn(ioScheduler)
                    .observeOn(mainThreadScheduler)
        }
    }

    fun <T> getIOToMainTransformerSingle(): SingleTransformer<T, T> {
        return SingleTransformer { objectObservable ->
            objectObservable
                    .subscribeOn(ioScheduler)
                    .observeOn(mainThreadScheduler)
        }
    }

    fun <T> getIOToMainTransformerFlowable(): FlowableTransformer<T, T> {
        return FlowableTransformer { objectObservable ->
            objectObservable
                    .subscribeOn(ioScheduler)
                    .observeOn(mainThreadScheduler)
        }
    }

    fun <T> getComputationToMainTransformer(): ObservableTransformer<T, T> {
        return ObservableTransformer { objectObservable ->
            objectObservable
                    .subscribeOn(computationScheduler)
                    .observeOn(mainThreadScheduler)
        }
    }

    fun <T> getComputationToMainTransformerSingle(): SingleTransformer<T, T> {
        return SingleTransformer { objectObservable ->
            objectObservable
                    .subscribeOn(computationScheduler)
                    .observeOn(mainThreadScheduler)
        }
    }

}

