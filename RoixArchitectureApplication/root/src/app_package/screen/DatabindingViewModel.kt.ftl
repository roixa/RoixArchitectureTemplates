package ${packageName}.ui.${screenPackage}.viewmodels

<#if !notGenerateInteractor>
import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
</#if>
import ${packageName}.di.${screenPackage}.${screenName}Module
<#if addList>
import ${packageName}.ui.common.viewmodels.BaseListViewModel
import ${packageName}.data.models.${screenName}Item
	<#else>
import ${packageName}.ui.common.viewmodels.BaseViewModel
</#if>
import javax.inject.Inject
import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
 <#if addList>
class ${screenName}ViewModel : BaseListViewModel<${screenName}Item>() {
	<#else>
class ${screenName}ViewModel :BaseViewModel() {
</#if>


<#if !notGenerateInteractor>
    @Inject
    protected lateinit var interactor :I${screenName}Interactor
</#if>

    override val module: Module = ${screenName}Module()
}
