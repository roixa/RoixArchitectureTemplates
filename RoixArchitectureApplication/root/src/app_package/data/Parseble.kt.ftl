package ${packageName}.data

import android.app.Application
import ${packageName}.dagger.common.AppComponent
import ${packageName}.dagger.common.AppModule
import ${packageName}.dagger.common.DaggerAppComponent

/**
 * Created by belyalov on 26.12.2017.
 */
interface Parseble<out T> {
    fun isValid(): Boolean
    fun parse(): T
}
