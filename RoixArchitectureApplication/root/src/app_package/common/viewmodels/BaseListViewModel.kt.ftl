package ${packageName}.ui.common.viewmodels

import ${packageName}.ui.common.delegates.vvm.list.IListHandleViewModelDelegate
import ${packageName}.ui.common.delegates.vvm.list.ListHandleViewModelDelegate
/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

abstract class BaseListViewModel<Item> : BaseViewModel()
        , IListHandleViewModelDelegate<Item> by ListHandleViewModelDelegate<Item>()