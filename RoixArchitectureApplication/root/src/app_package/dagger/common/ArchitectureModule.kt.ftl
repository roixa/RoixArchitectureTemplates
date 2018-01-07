package ${packageName}.dagger.common

import ${packageName}.dagger.${screenPackage}.${screenName}Module
import ${packageName}.dagger.${repositoryPackage}.${repositoryName}RepositoryModule

import dagger.Module

/**
 *fixme: add the generated module after generate screen or repository
 * */

@ViewModelScope
@Module(includes = arrayOf(
   UtilsModule::class
   ,${screenName}Module::class
   ,${repositoryName}RepositoryModule::class

))
class ArchitectureModule

