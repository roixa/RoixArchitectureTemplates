package ${packageName}.utils.rx.general

import io.reactivex.Scheduler
import io.reactivex.schedulers.Schedulers

class RxSchedulersTest : RxSchedulersAbs() {

    override val mainThreadScheduler: Scheduler
        get() = Schedulers.trampoline()

    override val ioScheduler: Scheduler
        get() = Schedulers.trampoline()

    override val computationScheduler: Scheduler
        get() = Schedulers.trampoline()
}