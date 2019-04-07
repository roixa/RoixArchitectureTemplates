package ${packageName}.ui.common.delegates.vvm.message

import androidx.lifecycle.MutableLiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ShowMessageHandleViewModelDelegate : IShowMessageHandleViewModelDelegate {

    override val showMessageLiveData: MutableLiveData<String> = MutableLiveData()

    override fun handleShowMessage(text: String) {
        showMessageLiveData.value = text
    }

}