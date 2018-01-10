package ${packageName}.ui.common.loading

import android.databinding.ObservableBoolean

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class LoadingObservableBoolean : ObservableBoolean(), ILoadingObserver {

    @Volatile private var loadingCount = 0

    override fun onStartLoad() {
        loadingCount++
        set(true)
    }

    override fun onEndLoad() {
        loadingCount--
        if (loadingCount <= 0){
            set(false)
        }
    }

}
