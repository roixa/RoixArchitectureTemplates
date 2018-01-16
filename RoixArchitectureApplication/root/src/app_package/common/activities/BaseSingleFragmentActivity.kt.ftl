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

    protected fun <T:BaseDatabindingFragment<*, *>>setFragment(newFragmentClazz: Class<T>) {
        fragmentManager.executePendingTransactions()

        val currentFragment = getCurrentFragment()
        val reusedFragment = fragmentManager.findFragmentByTag(
                newFragmentClazz
                        .name)
        val fragment: BaseDatabindingFragment<*, *>

        if (null != reusedFragment && currentFragment === reusedFragment) {
            return
        }

        val tr = fragmentManager.beginTransaction()

        if (null != currentFragment) {
            tr.detach(currentFragment)
        }

        if (null == reusedFragment) {
            fragment = newFragmentClazz.newInstance()
            tr.add(getFragmentContainerId(), fragment, fragment.javaClass
                    .name)
        } else {
            tr.attach(reusedFragment)
        }
        tr.commit()
    }

    protected fun getCurrentFragment(): BaseDatabindingFragment<*, *>? {
        val ret = fragmentManager.findFragmentById(getFragmentContainerId()) ?: return null
        return  ret as BaseDatabindingFragment<*, *>
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

    override fun goBack() {
        var count = fragmentManager.backStackEntryCount
        if(count<2){
            super.goBack()
        }
        else{
            popBackStack()
        }
    }


}