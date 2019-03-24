
<#if addScreenToFeature>
package ${packageName}.ui.${existingFeaturePackage}.views

import androidx.appcompat.widget.Toolbar
import ${packageName}.R
import ${packageName}.databinding.Fragment${screenName}Binding
import ${packageName}.ui.common.fragments.BaseToolbarFragment
import ${packageName}.ui.${existingFeaturePackage}.viewmodels.${existingFeatureName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Fragment : BaseToolbarFragment<${existingFeatureName}ViewModel, Fragment${screenName}Binding>() {

		<#else>

package ${packageName}.ui.${screenPackage}.views

import androidx.appcompat.widget.Toolbar
import ${packageName}.R
import ${packageName}.databinding.Fragment${screenName}Binding
import ${packageName}.ui.common.fragments.BaseToolbarFragment
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ${screenName}Fragment : BaseToolbarFragment<${screenName}ViewModel, Fragment${screenName}Binding>() {

</#if>

    override val layoutId: Int = R.layout.fragment_${screenPackage}

    override fun getToolbar(): Toolbar? = binding.toolbar.tb

    override fun setupBinding() {
        super.setupBinding()
        toolbarType.title.value = getString(R.string.title_${screenPackage})
    }


}

