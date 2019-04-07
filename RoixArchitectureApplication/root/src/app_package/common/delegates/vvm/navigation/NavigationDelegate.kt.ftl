package ${packageName}.ui.common.delegates.vvm.navigation

import android.view.View
import androidx.navigation.NavController
import androidx.navigation.Navigation
import ${packageName}.ui.common.delegates.view.sub_livedata.ILiveDataSubscriptionDelegate
import ${packageName}.ui.common.delegates.vvm.navigation.commands.BackScreenCommand
import ${packageName}.ui.common.delegates.vvm.navigation.commands.BackToScreenCommand
import ${packageName}.ui.common.delegates.vvm.navigation.commands.ForwardScreenCommand

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class NavigationDelegate : INavigationDelegate {

    private lateinit var navController: NavController
    private var count = 0

    override fun initNavigationHandle(view: View, subscription: ILiveDataSubscriptionDelegate, source: IViewModelNavigationDelegate) {
        navController = Navigation.findNavController(view)
        if (count == 0) {
            subscription.apply {
                source.navigationLiveData.sub {
                    when (it) {
                        is ForwardScreenCommand -> goForward()
                        is BackScreenCommand -> goBack()
                        is BackToScreenCommand -> backTo(it.screenId)
                        else -> nextScreen(it.screenId, it.params)
                    }
                }
            }
        }
        count++
    }

    override fun nextScreen(screenId: Int, params: Any?) {
        navController.navigate(screenId)
    }

    override fun goForward() {
        navController.navigateUp()
    }

    override fun goBack() {
        navController.popBackStack()
    }

    override fun backTo(screenId: Int) {
        navController.popBackStack(screenId, false)//TODO inclusive question
    }
}