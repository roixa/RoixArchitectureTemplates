package ${packageName}.ui.common.delegates.view.databinding

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.appcompat.app.AppCompatActivity
import androidx.databinding.DataBindingUtil
import androidx.databinding.ViewDataBinding
import ${packageName}.BR
import ${packageName}.ui.common.viewmodels.BaseViewModel
/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class DatabindingHandleDelegate<DataBinding : ViewDataBinding, ViewModel : BaseViewModel> : IDatabindingHandleDelegate<DataBinding, ViewModel> {

    override lateinit var binding: DataBinding

    override fun initBinding(activity: AppCompatActivity, layoutId: Int, viewmodel: ViewModel?): DataBinding {
        binding = DataBindingUtil.setContentView(activity, layoutId)
        binding.setVariable(BR.viewmodel, viewmodel)
        binding.setLifecycleOwner(activity)
        return binding
    }

    override fun initBinding(activity: AppCompatActivity, layoutId: Int, inflater: LayoutInflater, container: ViewGroup?, viewmodel: ViewModel?): DataBinding {
        binding = DataBindingUtil.inflate(inflater, layoutId, container, false)
        binding.setVariable(BR.viewmodel, viewmodel)
        binding.setLifecycleOwner(activity)
        return binding
    }


}