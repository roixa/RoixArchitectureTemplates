package ${packageName}.ui.common.loading

import android.arch.lifecycle.LiveData

/**
 * Created by belyalov on 19.12.2017.
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
