package ${packageName}.ui.${screenPackage}.viewmodels

import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.di.${screenPackage}.${screenName}Module
import ${packageName}.ui.common.viewmodels.BaseViewModel
import javax.inject.Inject
import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}ViewModel :BaseViewModel() {

    @Inject
    protected lateinit var interactor :I${screenName}Interactor

    override val module: Module = ${screenName}Module()
}
