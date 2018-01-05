package ${packageName}.dagger.common

import dagger.Module
import javax.inject.Singleton
import kotlin.reflect.KClass

/**
 * Created by roix on 29.11.2017.
 */


@Module(includes = arrayOf(
        AppModule::class
        ,ScreensModule::class
        ,RepositoriesModule::class
))
@Singleton
class CommonModule
