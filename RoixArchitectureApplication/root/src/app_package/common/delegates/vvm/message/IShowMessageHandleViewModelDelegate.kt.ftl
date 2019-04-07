package ${packageName}.ui.common.delegates.vvm.message

import androidx.lifecycle.LiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IShowMessageHandleViewModelDelegate {
    fun handleShowMessage(text: String)
    val showMessageLiveData: LiveData<String>
}