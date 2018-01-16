package ${packageName}.ui.common.fragments

import android.annotation.SuppressLint
import android.app.Fragment
import android.app.ProgressDialog
import android.arch.lifecycle.LifecycleOwner
import android.arch.lifecycle.LiveData
import android.arch.lifecycle.Observer
import android.arch.lifecycle.ViewModelProviders
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
    private lateinit var progressDialog: ProgressDialog

    @IdRes
    abstract fun getLayoutId(): Int

    @SuppressLint("ResourceType")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        viewModel = bindViewModel(getViewModelJavaClass())
    }

    override fun onCreateView(inflater: LayoutInflater?, container: ViewGroup?, savedInstanceState: Bundle?): View {
        binding = DataBindingUtil.inflate(inflater!!, getLayoutId(), container, false)
        setupUi()
        setupBinding()
        return binding.root
    }

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        refresh()
    }

    protected open fun setupUi() {
        progressDialog = ProgressDialog(activity)
        progressDialog.run {
            setMessage(getString(R.string.text_dialog_progress))
            setCancelable(false)
        }
    }

    @CallSuper
    protected open fun setupBinding() {
        with(binding) {
            setVariable(BR.viewmodel,viewModel)
            setLifecycleOwner(activity as LifecycleOwner)
        }
    }


    //handle this if you want to refresh data in a reattached fragment
    protected open fun refresh(){

    }

    @CallSuper
    protected open fun <T : BaseLifecycleViewModel> bindViewModel(clazz: Class<T>): T {
        val viewModel = ViewModelProviders.of(activity as FragmentActivity).get(clazz)
        viewModel.loadingLiveData.sub { b -> handleProgress(b) }
        viewModel.showMessageDialogLiveData.sub { s -> this.showMessageDialog(s) }
        viewModel.errorLiveData.sub { t -> handleError(t) }
        viewModel.onBindView(activity.application as CommonApplication)
        return viewModel
    }


    protected open fun handleProgress(isProgress: Boolean) {
        if (isProgress) {
            progressDialog.show()
        } else {
            progressDialog.hide()
        }
    }

    protected open fun showMessageDialog(message: String) {
        Toast.makeText(activity, message, Toast.LENGTH_LONG).show()
    }

    protected open fun handleError(throwable: Throwable){
        Toast.makeText(activity,throwable.message,Toast.LENGTH_LONG).show()
    }

    protected fun <T> LiveData<T>.sub(func: (T) -> Unit) {
        observe(activity as FragmentActivity, Observer { T -> if (T != null) func.invoke(T) })
    }

    protected fun <T> Observable<T>.sub(func: (T) -> Unit) {
        viewModel.toLiveDataFun(this).sub(func)
    }

    protected fun <T> Single<T>.sub(func: (T) -> Unit) {
        viewModel.toLiveDataFun(this.toObservable()).sub(func)
    }

    protected fun <T> Completable.sub(func: (T) -> Unit) {
        viewModel.toLiveDataFun(this.toObservable<T>()).sub(func)
    }

    protected fun <T> Flowable<T>.sub(func: (T) -> Unit) {
        viewModel.toLiveDataFun(this.toObservable()).sub(func)
    }

    private fun getViewModelJavaClass(): Class<ViewModel> {
        return (this.javaClass.genericSuperclass as ParameterizedType).actualTypeArguments[0] as Class<ViewModel>
    }


}