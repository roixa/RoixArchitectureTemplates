package ${packageName}.ui.common.delegates.viewmodel.di_toothpick

import ${packageName}.application.CommonApplication
import toothpick.Scope
import toothpick.Toothpick

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class DIToothpickDelegate : IDIDelegate {

    private lateinit var viewModelScope: Scope

    override fun initDIDelegate(application: CommonApplication, moduleProvider: ModuleProvider, injectingObject: Any) {
        viewModelScope = Toothpick.openScopes(application, this)
        viewModelScope.installModules(moduleProvider.module)
        Toothpick.inject(injectingObject, viewModelScope)
    }

    override fun clearDiDelegate() {
        if (::viewModelScope.isInitialized) {
            Toothpick.closeScope(viewModelScope)
        }
    }
}