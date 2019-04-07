package ${packageName}.ui.common.delegates.vvm.list

import ${packageName}.ui.common.delegates.view.sub_livedata.ILiveDataSubscriptionDelegate

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IListHandleViewDelegate<Item> {
    fun initListHandle(viewProvider: ListViewProvider, subscription: ILiveDataSubscriptionDelegate, source: IListHandleViewModelDelegate<Item>)
}