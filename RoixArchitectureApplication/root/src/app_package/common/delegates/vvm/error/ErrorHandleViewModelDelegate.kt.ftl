package ${packageName}.ui.common.delegates.vvm.error

import androidx.lifecycle.MutableLiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ErrorHandleViewModelDelegate : IErrorHandleViewModelDelegate {

    override val errorLiveData = MutableLiveData<Throwable>()

    override fun handleError(errorThrowable: Throwable) {
        errorLiveData.value = errorThrowable
    }

}