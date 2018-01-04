package ${packageName}.application

import android.app.Application
import ${packageName}.dagger.common.AppComponent
import ${packageName}.dagger.common.AppModule
import ${packageName}.dagger.common.DaggerAppComponent

/**
 * Created by roix on 29.11.2017.
 */
class ${appName}: Application() {

    companion object {
        @JvmStatic lateinit var appComponent: AppComponent
    }

    override fun onCreate() {
        super.onCreate()
        appComponent = DaggerAppComponent.builder().appModule(AppModule(this)).build()
    }
}
