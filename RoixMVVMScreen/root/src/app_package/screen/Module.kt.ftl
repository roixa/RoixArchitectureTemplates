package ${packageName}.di.${screenPackage}

 <#if !notGenerateInteractor>
import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.buissness.${screenPackage}.${screenName}Interactor
</#if>
 <#if !notGenerateRepository>
import ${packageName}.data.repositories.${screenPackage}.${screenName}Repository
import ${packageName}.data.repositories.${screenPackage}.I${screenName}Repository
</#if>
import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Module : Module() {

    init {
 <#if !notGenerateInteractor>
        bind(I${screenName}Interactor::class.java).to(${screenName}Interactor::class.java).instancesInScope()
</#if>
 <#if !notGenerateRepository>
        bind(I${screenName}Repository::class.java).to(${screenName}Repository::class.java).instancesInScope()
</#if>
    }

}