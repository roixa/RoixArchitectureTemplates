package ${packageName}.ui.${screenPackage}.viewmodels

import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.toothpick.${screenPackage}.${screenName}Module
import ${packageName}.ui.common.viewmodels.BaseDatabindingViewModel
import javax.inject.Inject
import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}ViewModel :BaseDatabindingViewModel() {

    @Inject
    protected lateinit var ${screenPackage}Interactor :I${screenName}Interactor

    override fun getModule(): Module = ${screenName}Module()
}
