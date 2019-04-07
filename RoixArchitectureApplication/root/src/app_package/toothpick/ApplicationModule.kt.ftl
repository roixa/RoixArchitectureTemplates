package ${packageName}.di.app

import android.content.Context
import ${packageName}.application.CommonApplication
import ${packageName}.utils.rx.general.RxSchedulers
import ${packageName}.utils.rx.general.RxSchedulersAbs
import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ApplicationModule(application: CommonApplication) : Module() {
    init {
        bind(Context::class.java).toInstance(application.applicationContext)
        bind(RxSchedulersAbs::class.java).toInstance(RxSchedulers())
    }
}