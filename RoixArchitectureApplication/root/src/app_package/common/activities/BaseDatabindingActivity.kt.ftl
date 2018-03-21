package ${packageName}.ui.common.activities

import android.databinding.DataBindingUtil
import android.databinding.ViewDataBinding
import android.support.annotation.CallSuper
import ${packageName}.BR
import ${packageName}.ui.common.viewmodels.BaseLifecycleViewModel
import ru.terrakok.cicerone.Navigator


/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseDatabindingActivity<ViewModel : BaseLifecycleViewModel, DataBinding : ViewDataBinding> : BaseLifecycleActivity<ViewModel>() {

    protected lateinit var binding: DataBinding

    protected open fun getNavigator(): Navigator? = null

    override fun setupUi() {
        super.setupUi()
        setupBinding()
    }

    @CallSuper
    protected open fun setupBinding() {
        binding = DataBindingUtil.setContentView(this, getLayoutId())
        binding.setVariable(BR.viewmodel, viewModel)
        binding.setLifecycleOwner(this)
    }

    override fun onResume() {
        super.onResume()
        val navigator = getNavigator()
        if (navigator != null) {
            viewModel.navigatorHolder.setNavigator(navigator)
        }
    }

    override fun onPause() {
        super.onPause()
        val navigator = getNavigator()
        if (navigator != null) {
            viewModel.navigatorHolder.removeNavigator()
        }
    }
}
