package ${packageName}.dagger.common

import java.lang.annotation.Retention
import java.lang.annotation.RetentionPolicy
import javax.inject.Scope

/**
 * Created by roix on 29.11.2017.
 */
@Scope
@Retention(RetentionPolicy.RUNTIME)
annotation class ViewModelScope
