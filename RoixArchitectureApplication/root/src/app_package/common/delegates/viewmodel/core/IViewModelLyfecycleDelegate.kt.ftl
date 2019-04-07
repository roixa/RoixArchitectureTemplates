package ${packageName}.ui.common.delegates.viewmodel.core

import android.app.Application

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

interface IViewModelLyfecycleDelegate {
    fun onBindView(application: Application)
    fun onBindFirstView()
    fun onBindFirstView(application: Application)
}