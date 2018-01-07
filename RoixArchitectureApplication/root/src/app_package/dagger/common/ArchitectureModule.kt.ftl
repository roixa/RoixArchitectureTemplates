package ${packageName}.dagger.common

import ${packageName}.dagger.${screenPackage}.${screenName}Module
import ${packageName}.dagger.${repositoryPackage}.${repositoryName}RepositoryModule

import dagger.Module

/**
 * Created by roix on 28.11.2017.
 */
@ViewModelScope
@Module(includes = arrayOf(
   UtilsModule::class
   ,${screenName}Module::class
   ,${repositoryName}RepositoryModule::class

))
class ArchitectureModule

