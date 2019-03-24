<#if addScreenToFeature>
package ${packageName}.ui.${existingFeaturePackage}.views

import ${packageName}.R
import ${packageName}.databinding.Fragment${screenName}Binding
import ${packageName}.ui.common.fragments.BaseDatabindingFragment
import ${packageName}.ui.${existingFeaturePackage}.viewmodels.${existingFeatureName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Fragment : BaseDatabindingFragment<${existingFeatureName}ViewModel, Fragment${screenName}Binding>() {

		<#else>

package ${packageName}.ui.${screenPackage}.views

import ${packageName}.R
import ${packageName}.databinding.Fragment${screenName}Binding
import ${packageName}.ui.common.fragments.BaseDatabindingFragment
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Fragment : BaseDatabindingFragment<${screenName}ViewModel, Fragment${screenName}Binding>() {

</#if>

    override val layoutId: Int = R.layout.fragment_${screenPackage}

}

