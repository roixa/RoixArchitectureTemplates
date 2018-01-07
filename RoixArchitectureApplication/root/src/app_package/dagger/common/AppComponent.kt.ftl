package ${packageName}.dagger.common

import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

import dagger.Component

/**
 *fixme: add inject of the generated viewmodule after generate screen
 * */

@ViewModelScope
@Component(modules = arrayOf(CommonModule::class))
interface AppComponent {

    fun inject(${screenPackage}ViewModel: ${screenName}ViewModel)

}
