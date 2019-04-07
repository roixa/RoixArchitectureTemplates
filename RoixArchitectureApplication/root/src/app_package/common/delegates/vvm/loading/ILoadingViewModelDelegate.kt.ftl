package ${packageName}.ui.common.delegates.vvm.loading

import androidx.lifecycle.LiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface ILoadingViewModelDelegate {
    fun onStartLoad()
    fun onEndLoad()
    val loadingLiveData: LiveData<Boolean>
}