package ${packageName}.ui.common.delegates.vvm.navigation

import androidx.lifecycle.MutableLiveData
import ${packageName}.ui.common.delegates.vvm.navigation.commands.BackScreenCommand
import ${packageName}.ui.common.delegates.vvm.navigation.commands.BackToScreenCommand
import ${packageName}.ui.common.delegates.vvm.navigation.commands.ForwardScreenCommand
import ${packageName}.ui.common.delegates.vvm.navigation.commands.ScreenCommand
import ${packageName}.utils.ui.singleEvent

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ViewModelNavigationDelegate : IViewModelNavigationDelegate {

    override val navigationLiveData: MutableLiveData<ScreenCommand> = MutableLiveData()

    override fun nextScreen(screenId: Int) {
        navigationLiveData.singleEvent(ScreenCommand(screenId, null))
    }

    override fun nextScreen(screenId: Int, params: Any) {
        navigationLiveData.singleEvent(ScreenCommand(screenId, params))
    }

    override fun goForward() {
        navigationLiveData.singleEvent(ForwardScreenCommand())
    }

    override fun goBack() {
        navigationLiveData.singleEvent(BackScreenCommand())
    }

    override fun backTo(screenId: Int) {
        navigationLiveData.singleEvent(BackToScreenCommand(screenId))
    }
}