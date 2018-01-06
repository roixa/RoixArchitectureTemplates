package ${packageName}.dagger.${screenPackage}

import ${packageName}.buissness.${screenPackage}.I${screenName}Interactor
import ${packageName}.buissness.${screenPackage}.${screenName}Interactor
import ${packageName}.dagger.common.ViewModelScope
import dagger.Module
import dagger.Provides

/**
 * Created by roix on 06.01.2018.
 */

@ViewModelScope
@Module
class ${screenName}Module {
    @Provides
    fun provideInteractor()
            : I${screenName}Interactor = ${screenName}Interactor()

}
