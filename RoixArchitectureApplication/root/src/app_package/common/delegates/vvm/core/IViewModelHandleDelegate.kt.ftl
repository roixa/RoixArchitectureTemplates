package ${packageName}.ui.common.delegates.vvm.core

import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.ViewModel

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IViewModelHandleDelegate< ViewModelType : ViewModel> {
    fun initViewModel(activity: AppCompatActivity, clazz: Class<ViewModelType>)
    var viewModel: ViewModelType
}