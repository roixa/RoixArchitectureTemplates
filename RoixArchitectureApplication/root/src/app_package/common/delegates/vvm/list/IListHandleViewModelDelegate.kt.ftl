package ${packageName}.ui.common.delegates.vvm.list

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IListHandleViewModelDelegate<Item> {
    fun refresh()
    val items: ListLiveData<Item>
}