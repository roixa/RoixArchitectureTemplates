package ${packageName}.ui.common.delegates.vvm.list

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ListHandleViewModelDelegate<Item> : IListHandleViewModelDelegate<Item> {

    override val items: ListLiveData<Item> = ListLiveData()

    //TODO maybe add logic to this
    override fun refresh() {

    }
}