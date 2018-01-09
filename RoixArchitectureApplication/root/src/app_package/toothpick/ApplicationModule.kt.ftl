package ${packageName}.toothpick.common

import android.content.Context
import ${packageName}.application.CommonApplication
import ${packageName}.utils.rx.general.RxSchedulers
import ${packageName}.utils.rx.general.RxSchedulersAbs
import toothpick.config.Module

/**
 * Created by roix on 08.01.2018.
 */
class ApplicationModule(val application: CommonApplication):Module() {
    init {
        bind(Context::class.java).toInstance(application.applicationContext)
        bind(RxSchedulersAbs::class.java).toInstance(RxSchedulers())
    }
}