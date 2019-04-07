package ${packageName}.ui.common.delegates.vvm.message

import android.content.Context
import ${packageName}.ui.common.delegates.view.sub_livedata.ILiveDataSubscriptionDelegate

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IShowMessageDelegate {
    fun initShowMessageHandle(context: Context, subscription: ILiveDataSubscriptionDelegate, source: IShowMessageHandleViewModelDelegate)
    fun showMessage(text: String)
}