package ${packageName}.buissness.${screenPackage}

import ${packageName}.data.repositories.${repositoryPackage}.I${repositoryName}Repository
import ${packageName}.data.repositories.${repositoryPackage}.${repositoryName}Repository

import javax.inject.Inject

/**
 * Created by roix on 06.01.2018.
 */
class ${screenName}Interactor: I${screenName}Interactor {

    @Inject constructor()

    @Inject lateinit var  ${repositoryPackage}Repository: ${repositoryName}Repository

}
