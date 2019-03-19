package ${packageName}.di.${screenPackage}

import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.buissness.${screenPackage}.${screenName}Interactor
import ${packageName}.data.repositories.${screenPackage}.${screenName}Repository
import ${packageName}.data.repositories.${screenPackage}.I${screenName}Repository

import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Module : Module() {
    init {
        bind(I${screenName}Interactor::class.java).to(${screenName}Interactor::class.java).instancesInScope()
        bind(I${screenName}Repository::class.java).to(${screenName}Repository::class.java).instancesInScope()

    }
}