package ${packageName}.buissness.${screenPackage}

import javax.inject.Inject
<#if !notGenerateRepository>
import ${packageName}.data.repositories.${screenPackage}.I${screenName}Repository
</#if>

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

<#if notGenerateRepository>
class ${screenName}Interactor @Inject constructor() : I${screenName}Interactor {
	<#else>
class ${screenName}Interactor @Inject constructor(val repository: I${screenName}Repository): I${screenName}Interactor {
</#if>


}