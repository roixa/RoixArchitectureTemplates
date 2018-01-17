package ${packageName}.utils.rx.general

import io.reactivex.Scheduler
import io.reactivex.android.schedulers.AndroidSchedulers
import io.reactivex.schedulers.Schedulers

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class RxSchedulers : RxSchedulersAbs() {

    override val mainThreadScheduler: Scheduler
        get() = AndroidSchedulers.mainThread()

    override val ioScheduler: Scheduler
        get() = Schedulers.io()

    override val computationScheduler: Scheduler
        get() = Schedulers.computation()
}