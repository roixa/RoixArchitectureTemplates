package ${packageName}.ui.${screenPackage}.viewmodels

import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.toothpick.${screenPackage}.${screenName}Module
import ${packageName}.ui.common.viewmodels.BaseDatabindingViewModel
import javax.inject.Inject
import toothpick.config.Module

/**
 * Created by roix on 06.01.2018.
 */
class ${screenName}ViewModel :BaseDatabindingViewModel() {

    @Inject
    protected lateinit var interactor :I${screenName}Interactor

    override fun getModule(): Module = ${screenName}Module()
}
