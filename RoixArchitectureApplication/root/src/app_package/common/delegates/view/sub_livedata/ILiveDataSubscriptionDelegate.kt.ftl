package ${packageName}.ui.common.delegates.view.sub_livedata

import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface ILiveDataSubscriptionDelegate {
    fun initLiveDataSubscription(livecycleOwner: LifecycleOwner)
    fun <T> LiveData<T>.sub(func: (T) -> Unit)
}