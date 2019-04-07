package ${packageName}.ui.common.delegates.vvm.core

import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProviders

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ViewModelHandleDelegate<ViewModelType : ViewModel> : IViewModelHandleDelegate<ViewModelType> {

    override lateinit var viewModel: ViewModelType

    override fun initViewModel(activity: AppCompatActivity, clazz: Class<ViewModelType>) {
        viewModel = ViewModelProviders.of(activity).get(clazz)
    }


}