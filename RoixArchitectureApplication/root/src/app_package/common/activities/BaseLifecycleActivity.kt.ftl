package ${packageName}.ui.common.activities

import android.annotation.SuppressLint
import android.app.ProgressDialog
import android.arch.lifecycle.LiveData
import android.arch.lifecycle.Observer
import android.arch.lifecycle.ViewModelProviders
import android.os.Bundle
import android.support.annotation.CallSuper
import android.support.annotation.IdRes
import android.support.v7.app.AppCompatActivity
import android.widget.Toast
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
abstract class BaseLifecycleActivity<ViewModel : BaseLifecycleViewModel> : AppCompatActivity() {

    @IdRes
    abstract fun getLayoutId(): Int

    protected lateinit var viewModel: ViewModel
	
    //TODO: using global progressDialog design pattern is depricated
    private lateinit var progressDialog: ProgressDialog

    @SuppressLint("ResourceType")
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(getLayoutId())
        viewModel = bindViewModel(getViewModelJavaClass())
        setupUi()
    }

    private fun <T : BaseLifecycleViewModel> bindViewModel(clazz: Class<T>): T {
        val viewModel = ViewModelProviders.of(this).get(clazz)
        viewModel.loadingLiveData.sub { b -> handleProgress(b) }
        viewModel.showMessageDialogLiveData.sub { s -> this.showMessageDialog(s) }
        viewModel.errorLiveData.sub { t -> handleError(t) }
        viewModel.onBindView(application as CommonApplication)
        return viewModel
    }

    protected open fun setupUi() {
        progressDialog = ProgressDialog(this)
        progressDialog.setMessage(getString(R.string.text_dialog_progress))
        progressDialog.setCancelable(false)
    }

    @CallSuper
    protected open fun handleProgress(isProgress: Boolean) {
        if (isProgress) {
            progressDialog.show()
        } else {
            progressDialog.hide()
        }
    }

    @CallSuper
    protected open fun showMessageDialog(message: String) {
        Toast.makeText(this, message, Toast.LENGTH_LONG).show()
    }
	
	    protected open fun handleError(throwable: Throwable){
        Toast.makeText(this,throwable.message,Toast.LENGTH_LONG).show()
    }


    protected fun <T> LiveData<T>.sub(func: (T) -> Unit) {
        observe(this@BaseLifecycleActivity, Observer { T -> if (T != null) func.invoke(T) })
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
