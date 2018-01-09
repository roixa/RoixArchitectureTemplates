package ${packageName}.ui.${screenPackage}.viewmodels

import ${packageName}.buissness.common.IBaseListInteractor
import ${packageName}.buissness.${screenPackage}.${screenName}Interactor
import ${packageName}.toothpick.${screenPackage}.${screenName}Module
import ${packageName}.data.models.${itemName}Item
import ${packageName}.ui.common.viewmodels.BaseListViewModel
import javax.inject.Inject
import toothpick.config.Module

/**
 * Created by roix on 30.11.2017.
 */
class ${screenName}ViewModel : BaseListViewModel<${itemName}Item>() {

    @Inject lateinit var ${screenPackage}Interactor: ${screenName}Interactor

    override fun getInteractor(): IBaseListInteractor<${itemName}Item> = ${screenPackage}Interactor

    override fun getModule(): Module = ${screenName}Module()

}
