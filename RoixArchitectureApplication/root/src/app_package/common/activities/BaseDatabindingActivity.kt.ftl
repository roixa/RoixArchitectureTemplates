package ${packageName}.ui.common.activities

import android.databinding.DataBindingUtil
import android.databinding.ViewDataBinding
import android.support.annotation.CallSuper
import com.android.databinding.library.baseAdapters.BR
import ${packageName}.ui.common.viewmodels.BaseDatabindingViewModel

/**
 * Created by roix on 02.12.2017.
 */
abstract class BaseDatabindingActivity<ViewModel : BaseDatabindingViewModel, DataBinding : ViewDataBinding> : BaseLifecycleActivity<ViewModel>() {

    protected lateinit var binding: DataBinding

    override fun setupUi() {
        super.setupUi()
        setupBinding()
    }

    @CallSuper
    protected open fun setupBinding() {
        binding = DataBindingUtil.setContentView(this, getLayoutId())
        binding.setVariable(BR.viewmodel,viewModel)
    }
}
