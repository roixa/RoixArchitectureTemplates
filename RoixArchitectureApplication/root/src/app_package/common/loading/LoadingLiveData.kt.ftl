package ${packageName}.ui.common.loading

import androidx.lifecycle.LiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class LoadingLiveData : LiveData<Boolean>(), ILoadingObserver {

    @Volatile private var loadingCount = 0

    override fun onStartLoad() {
        loadingCount++
        postValue(true)
    }

    override fun onEndLoad() {
        loadingCount--
        if (loadingCount <= 0){
            postValue(false)
        }
    }
}
