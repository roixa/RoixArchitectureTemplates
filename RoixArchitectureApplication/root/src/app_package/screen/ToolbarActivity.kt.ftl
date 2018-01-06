package ${packageName}.ui.${screenPackage}.views

import android.support.v7.widget.Toolbar
import ${packageName}.R
import ${packageName}.databinding.Activity${screenName}Binding
import ${packageName}.ui.common.activities.BaseToolbarActivity
import ${packageName}.ui.simple.viewmodels.${screenName}ViewModel

class ${screenName}Activity : BaseToolbarActivity<${screenName}ViewModel, Activity${screenName}Binding>() {

    override fun getLayoutId(): Int = R.layout.${screenPackage}_simple


    override fun getToolbar(): Toolbar? = binding.toolbar.tb

}

