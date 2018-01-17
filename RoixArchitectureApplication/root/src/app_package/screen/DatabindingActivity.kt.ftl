package ${packageName}.ui.${screenPackage}.views

import android.support.v7.widget.Toolbar
import ${packageName}.R
import ${packageName}.databinding.Activity${screenName}Binding
import ${packageName}.ui.common.activities.BaseDatabindingActivity
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ${screenName}Activity : BaseDatabindingActivity<${screenName}ViewModel, Activity${screenName}Binding>() {

    override fun getLayoutId(): Int = R.layout.activity_${screenPackage}

}

