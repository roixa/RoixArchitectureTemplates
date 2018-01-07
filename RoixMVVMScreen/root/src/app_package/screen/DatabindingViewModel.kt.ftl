package ${packageName}.ui.${screenPackage}.viewmodels

import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.dagger.common.AppComponent
import ${packageName}.ui.common.viewmodels.BaseDatabindingViewModel
import javax.inject.Inject

/**
 * Created by roix on 06.01.2018.
 */
class ${screenName}ViewModel :BaseDatabindingViewModel() {

    @Inject
    protected lateinit var ${screenPackage}Interactor :I${screenName}Interactor

    override fun doInject(appComponent: AppComponent) {
        appComponent.inject(this)
    }
}
