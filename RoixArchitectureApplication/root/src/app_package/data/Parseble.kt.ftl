package ${packageName}.data.common

import android.app.Application
/**
 * Created by belyalov on 26.12.2017.
 */
interface Parseble<out T> {
    fun isValid(): Boolean
    fun parse(): T
}
