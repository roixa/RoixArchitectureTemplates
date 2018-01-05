package ${packageName}.dagger.common

import ${packageName}.dagger.${screenPackage}.${screenName}Module
import dagger.Module

/**
 * Created by roix on 28.11.2017.
 */
@ViewModelScope
@Module(includes = arrayOf(
        ${screenName}Module::class
))
class ScreensModule

