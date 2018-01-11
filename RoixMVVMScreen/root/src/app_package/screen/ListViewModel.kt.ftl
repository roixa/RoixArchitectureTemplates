package ${packageName}.ui.${screenPackage}.viewmodels

import ${packageName}.buissness.common.IBaseListInteractor
import ${packageName}.buissness.${screenPackage}.${screenName}Interactor
import ${packageName}.toothpick.main.MainModule
import ${packageName}.data.models.${itemName}Item
import ${packageName}.ui.common.viewmodels.BaseListViewModel
import javax.inject.Inject
import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}ViewModel : BaseListViewModel<${itemName}Item>() {

    @Inject lateinit var interactor: ${screenName}Interactor

    override fun getInteractor(): IBaseListInteractor<${itemName}Item> = ${screenPackage}Interactor

    override fun getModule(): Module = ${screenName}Module()

}