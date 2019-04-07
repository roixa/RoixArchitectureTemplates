package ${packageName}.ui.common.delegates.vvm.list

import androidx.lifecycle.LiveData

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ListLiveData<Item> : LiveData<List<Item>>() {
    fun update(newList: List<Item>) {
        value = newList
    }
}