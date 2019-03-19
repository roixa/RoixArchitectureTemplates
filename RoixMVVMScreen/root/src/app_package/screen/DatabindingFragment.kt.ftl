package ${packageName}.ui.${screenPackage}.views

import android.support.v7.widget.Toolbar
import ${packageName}.R
import ${packageName}.databinding.Fragment${screenName}Binding
import ${packageName}.ui.common.fragments.BaseDatabindingFragment
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ${screenName}Fragment : BaseDatabindingFragment<${screenName}ViewModel, Fragment${screenName}Binding>() {

    override val layoutId: Int = R.layout.fragment_${screenPackage}

}

