package ${packageName}.buissness.${screenPackage}

import ${packageName}.data.repositories.${screenPackage}.I${screenName}Repository

import javax.inject.Inject

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Interactor @Inject constructor(val repository: I${screenName}Repository): I${screenName}Interactor {

}
