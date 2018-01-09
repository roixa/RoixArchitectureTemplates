package ${packageName}.toothpick.${screenPackage}

import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.buissness.${screenPackage}.${screenName}Interactor
import toothpick.config.Module

/**
 * Created by roix on 08.01.2018.
 */
class ${screenName}Module : Module() {
    init {
        bind(I${screenName}Interactor::class.java).to(${screenName}Interactor::class.java).instancesInScope()
    }
}