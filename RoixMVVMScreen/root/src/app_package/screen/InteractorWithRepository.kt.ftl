package ${packageName}.buissness.${screenPackage}

import ${packageName}.data.repositories.${repositoryPackage}.I${repositoryName}Repository
import ${packageName}.data.repositories.${repositoryPackage}.${repositoryName}Repository

import javax.inject.Inject

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Interactor @Inject constructor(val repository: I${screenName}Repository): I${screenName}Interactor {

}
