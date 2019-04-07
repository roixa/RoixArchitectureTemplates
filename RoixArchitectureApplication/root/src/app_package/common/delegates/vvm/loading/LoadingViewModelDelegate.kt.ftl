package ${packageName}.ui.common.delegates.vvm.loading

import ${packageName}.ui.common.loading.LoadingLiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class LoadingViewModelDelegate : ILoadingViewModelDelegate {

    override val loadingLiveData: LoadingLiveData = LoadingLiveData()

    override fun onStartLoad() = loadingLiveData.onStartLoad()

    override fun onEndLoad() = loadingLiveData.onEndLoad()

}