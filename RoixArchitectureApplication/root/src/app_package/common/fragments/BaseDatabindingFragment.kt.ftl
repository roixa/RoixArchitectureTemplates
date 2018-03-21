package ${packageName}.ui.common.fragments

import android.annotation.SuppressLint
import android.app.Fragment
import android.app.ProgressDialog
import android.arch.lifecycle.*
import android.content.Context
import android.app.Activity
import ru.terrakok.cicerone.Navigator
import android.databinding.DataBindingUtil
import android.databinding.ViewDataBinding
import android.os.Bundle
import android.support.annotation.CallSuper
import android.support.annotation.IdRes
import android.support.v4.app.FragmentActivity
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast
import com.android.databinding.library.baseAdapters.BR
import ${packageName}.R
import ${packageName}.application.CommonApplication
import ${packageName}.ui.common.viewmodels.BaseLifecycleViewModel
import io.reactivex.Completable
import io.reactivex.Flowable
import io.reactivex.Observable
import io.reactivex.Single
import java.lang.reflect.ParameterizedType

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
abstract class BaseDatabindingFragment<ViewModel : BaseLifecycleViewModel, DataBinding : ViewDataBinding> : Fragment() {

    protected lateinit var viewModel: ViewModel

    protected lateinit var binding: DataBinding

    //TODO: using global progressDialog design pattern is depricated
    private var progressDialog: ProgressDialog?=null


    //TODO strange bug after cicerone
    protected lateinit var mActivity: Activity

    protected open fun getNavigator(): Navigator? = null

    abstract fun getLayoutId(): Int

    @SuppressLint("ResourceType")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        Log.d("boux", "fragment onCreate " + javaClass)
        viewModel = bindViewModel(getViewModelJavaClass())
    }

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View {
        Log.d("boux", "fragment onCreateView " + javaClass)

        binding = DataBindingUtil.inflate(inflater!!, getLayoutId(), container, false)
        setupUi()
        setupBinding()
        return binding.root
    }

    override fun onAttach(context: Context?) {
        super.onAttach(context)
        mActivity=context as Activity
    }


    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        refresh()
    }


    protected open fun setupUi() {
        progressDialog = ProgressDialog(mActivity)
        progressDialog?.run {
            setMessage(getString(R.string.text_dialog_progress))
            setCancelable(false)
        }

    }

    @CallSuper
    protected open fun setupBinding() {
        with(binding) {
            setVariable(BR.viewmodel, viewModel)
            setLifecycleOwner(mActivity as LifecycleOwner)
        }
    }


    //handle this if you want to refresh data in a reattached fragment
    protected open fun refresh() {

    }

    open fun goBack(): Boolean {//return used in fragment
        return false
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

    override fun onDestroy() {
        super.onDestroy()
        if (progressDialog != null && progressDialog?.isShowing==true) {
            progressDialog?.cancel()
        }

        //TODO maybe use di
        if(BuildConfig.DEBUG){
            //LeakCanary.refWatcher(mActivity).buildAndInstall().watch(this)
        }
    }

    @CallSuper
    protected open fun <T : BaseLifecycleViewModel> bindViewModel(clazz: Class<T>): T {
        val viewModel = ViewModelProviders.of(mActivity as FragmentActivity).get(clazz)
        viewModel.loadingLiveData.sub { b -> if (b != null) handleProgress(b) }
        viewModel.showMessageDialogLiveData.sub { s -> if (s != null) this.showMessageDialog(s) }
        viewModel.errorLiveData.sub { t -> if (t != null) handleError(t) }
        viewModel.onBindView(mActivity.application as CommonApplication)
        return viewModel
    }


    protected open fun handleProgress(isProgress: Boolean) {
        if (progressDialog != null) {
            if (isProgress) {
                progressDialog?.show()
            } else {
                progressDialog?.hide()
            }
        }
    }

    protected open fun showMessageDialog(message: String) {
        //Toast.makeText(activity, message, Toast.LENGTH_LONG).show()
    }

    protected open fun handleError(throwable: Throwable) {
        //Toast.makeText(activity, throwable.message, Toast.LENGTH_LONG).show()
    }

    protected fun <T> LiveData<T>.sub(func: (T?) -> Unit) {
        observe(mActivity as FragmentActivity, Observer { T -> func.invoke(T) })
    }

    protected fun <T> LiveData<T>.subNoHistory(func: (T?) -> Unit) {
        var isUsed = false
        observe(mActivity as FragmentActivity, Observer { T ->
            if (!isUsed) {
                func.invoke(T)
                isUsed = true
            }
        })
    }


    protected fun <T> Observable<T>.subNoHistory(func: (T?) -> Unit) {
        viewModel.toLiveDataFun(this).subNoHistory(func)
    }

    protected fun <T> Single<T>.subNoHistory(func: (T?) -> Unit) {
        viewModel.toLiveDataFun(this.toObservable()).subNoHistory(func)
    }

    protected fun Completable.subNoHistory(func: (Boolean?) -> Unit) {
        viewModel.toLiveDataFun(this).subNoHistory(func)
    }

    protected fun <T> Flowable<T>.subNoHistory(func: (T?) -> Unit) {
        viewModel.toLiveDataFun(this.toObservable()).subNoHistory(func)
    }

    protected fun <T> Observable<T>.sub(func: (T?) -> Unit) {
        viewModel.toLiveDataFun(this).sub(func)
    }

    protected fun <T> Single<T>.sub(func: (T?) -> Unit) {
        viewModel.toLiveDataFun(this.toObservable()).sub(func)
    }

    protected fun Completable.sub(func: (Boolean?) -> Unit) {
        viewModel.toLiveDataFun(this).sub(func)
    }

    protected fun <T> Flowable<T>.sub(func: (T?) -> Unit) {
        viewModel.toLiveDataFun(this.toObservable()).sub(func)
    }


    fun <T> MutableLiveData<T>.setValueNoHistory(t: T) {
        value = (t)
        value = (null)
    }


    private fun getViewModelJavaClass(): Class<ViewModel> {
        return (this.javaClass.genericSuperclass as ParameterizedType).actualTypeArguments[0] as Class<ViewModel>
    }


}