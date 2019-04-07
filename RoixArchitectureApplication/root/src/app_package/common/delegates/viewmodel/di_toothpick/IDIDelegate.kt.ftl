package ${packageName}.ui.common.delegates.viewmodel.di_toothpick

import ${packageName}.application.CommonApplication

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IDIDelegate {
    fun initDIDelegate(application: CommonApplication, moduleProvider: ModuleProvider, injectingObject: Any)
    fun clearDiDelegate()
}