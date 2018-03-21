package ${packageName}.ui.common.activities

import android.databinding.ViewDataBinding
import android.support.annotation.IdRes
import ${packageName}.ui.common.fragments.BaseDatabindingFragment
import ${packageName}.ui.common.viewmodels.BaseLifecycleViewModel


/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
 
abstract class BaseSingleFragmentActivity<ViewModel : BaseLifecycleViewModel, DataBinding : ViewDataBinding> : BaseToolbarActivity<ViewModel, DataBinding>() {

    @IdRes protected abstract fun getFragmentContainerId(): Int

    protected fun getCurrentFragment(): BaseDatabindingFragment<*, *>? {
        val ret = fragmentManager.findFragmentById(getFragmentContainerId()) ?: return null
        return ret as BaseDatabindingFragment<*, *>
    }


    protected fun popBackStack() {
        fragmentManager.popBackStack()
    }

    protected fun clearStack() {
        var count = fragmentManager.backStackEntryCount

        while (0 != count) {
            fragmentManager.popBackStack()
            --count
        }
    }


    override fun onBackPressed() {
        goBack()
    }

}