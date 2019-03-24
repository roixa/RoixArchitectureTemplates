package ${packageName}.di.${featurePackage}

import ${packageName}.buissness.${featurePackage}.I${featureName}Interactor
import ${packageName}.buissness.${featurePackage}.${featureName}Interactor
import toothpick.config.Module

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${featureName}Module : Module() {
    init {
        bind(I${featureName}Interactor::class.java).to(${featureName}Interactor::class.java).instancesInScope()
    }
}