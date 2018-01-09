package ${packageName}.application

import android.app.Application
import ${packageName}.BuildConfig
import ${packageName}.FactoryRegistry
import ${packageName}.MemberInjectorRegistry
import ${packageName}.toothpick.common.ApplicationModule
import ${packageName}.toothpick.common.ApplicationScope
import toothpick.Toothpick
import toothpick.Toothpick.setConfiguration
import toothpick.configuration.Configuration.forDevelopment
import toothpick.configuration.Configuration.forProduction
import toothpick.registries.FactoryRegistryLocator
import toothpick.registries.MemberInjectorRegistryLocator
import toothpick.smoothie.module.SmoothieApplicationModule

/**
 * Created by roix on 29.11.2017.
 */
class CommonApplication : Application() {


    override fun onCreate() {
        super.onCreate()
        val configuration = if (BuildConfig.DEBUG) forDevelopment() else forProduction()
        setConfiguration(configuration.disableReflection())
        FactoryRegistryLocator.setRootRegistry(FactoryRegistry())
        MemberInjectorRegistryLocator.setRootRegistry(MemberInjectorRegistry())

        val appScope = Toothpick.openScope(this)
        appScope.installModules(SmoothieApplicationModule(this),ApplicationModule(this))
        appScope.bindScopeAnnotation(ApplicationScope::class.java)
    }
}