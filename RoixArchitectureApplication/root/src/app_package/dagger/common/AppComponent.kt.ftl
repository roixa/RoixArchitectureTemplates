package ${packageName}.dagger.common

import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

import dagger.Component

/**
 * Created by roix on 28.11.2017.
 */
@ViewModelScope
@Component(modules = arrayOf(CommonModule::class))
interface AppComponent {

    fun inject(${screenPackage}ViewModel: ${screenName}ViewModel)

}
