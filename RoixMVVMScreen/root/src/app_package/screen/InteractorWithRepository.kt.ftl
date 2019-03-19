package ${packageName}.buissness.${screenPackage}

import ${packageName}.data.repositories.${repositoryPackage}.I${screenName}Repository
import ${packageName}.data.repositories.${repositoryPackage}.${screenName}Repository

import javax.inject.Inject

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Interactor @Inject constructor(val repository: I${screenName}Repository): I${screenName}Interactor {

}
