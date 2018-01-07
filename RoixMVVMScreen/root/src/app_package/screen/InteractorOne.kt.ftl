package ${packageName}.buissness.${screenPackage}

import ${packageName}.data.repositories.${repositoryPackage}.I${repositoryName}Repository
import ${packageName}.data.repositories.${repositoryPackage}.${repositoryName}Repository

import javax.inject.Inject

/**
 * Created by roix on 06.01.2018.
 */
class ${screenName}Interactor: I${screenName}Interactor {

    private val ${repositoryPackage}Repository: I${repositoryName}Repository

    @Inject constructor(${repositoryPackage}Repository: I${repositoryName}Repository) {
        this.${repositoryPackage}Repository = ${repositoryName}Repository()
    }

}
