package ${packageName}.ui.common.delegates.vvm.error

import androidx.lifecycle.LiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IErrorHandleViewModelDelegate {
    fun handleError(error: Throwable)
    val errorLiveData: LiveData<Throwable>

}