package ${packageName}.ui.${screenPackage}.viewmodels

import ${packageName}.buissness.common.IBaseListInteractor
import ${packageName}.buissness.${screenPackage}.${screenName}Interactor
import ${packageName}.dagger.common.AppComponent
${packageName}.data.models.${itemName}Item
import ${packageName}.ui.common.viewmodels.BaseListViewModel
import javax.inject.Inject

/**
 * Created by roix on 30.11.2017.
 */
class ${screenName}ViewModel : BaseListViewModel<${itemName}Item>() {

    @Inject
    protected lateinit var ${screenPackage}Interactor: ${screenName}Interactor

    override fun getInteractor(): IBaseListInteractor<${itemName}Item> = ${screenPackage}Interactor

    override fun doInject(appComponent: AppComponent) {
        appComponent.inject(this)
    }

}
