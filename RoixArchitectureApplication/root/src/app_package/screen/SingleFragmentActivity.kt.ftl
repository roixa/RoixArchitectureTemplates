package ${packageName}.ui.${screenPackage}.views

import android.support.v7.widget.Toolbar
import ${packageName}.R
import ${packageName}.databinding.Activity${screenName}Binding
import ${packageName}.ui.common.activities.BaseSingleFragmentActivity
import ${packageName}.ui.common.view.ToolbarType
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ${screenName}Activity : BaseSingleFragmentActivity<${screenName}ViewModel, Activity${screenName}Binding>() {

    override fun getFragmentContainerId(): Int = R.id.container

    override fun getToolbar(): Toolbar? = binding.toolbar!!.tb

    override fun getLayoutId(): Int = R.layout.activity_${screenPackage}

}

