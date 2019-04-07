<#if addScreenToFeature>
package ${packageName}.ui.${existingFeaturePackage}.views
		<#else>
package ${packageName}.ui.${screenPackage}.views
</#if>

<#if addToolbar>
import androidx.appcompat.widget.Toolbar
</#if>
<#if addList>
import androidx.recyclerview.widget.RecyclerView
import androidx.swiperefreshlayout.widget.SwipeRefreshLayout
import ${packageName}.data.models.${screenName}Item
import ${packageName}.databinding.Item${screenName}Binding
</#if>
import ${packageName}.R
import ${packageName}.databinding.Fragment${screenName}Binding
	<#if addToolbar>
		<#if addList>
import ${packageName}.ui.common.fragments.BaseToolbarListFragment
			<#else>
import ${packageName}.ui.common.fragments.BaseToolbarFragment
		</#if>
		<#else>
			<#if addList>
import ${packageName}.ui.common.fragments.BaseListFragment
				<#else>
import ${packageName}.ui.common.fragments.BaseDatabindingFragment
			</#if>
	</#if>
<#if addScreenToFeature>
import ${packageName}.ui.${existingFeaturePackage}.viewmodels.${existingFeatureName}ViewModel
		<#else>
import ${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel
</#if>

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

<#if addScreenToFeature>
	<#if addToolbar>
		<#if addList>
class ${screenName}Fragment : BaseToolbarListFragment<${existingFeatureName}ViewModel, Fragment${screenName}Binding, ${screenName}Item, Item${screenName}Binding>() {
			<#else>
class ${screenName}Fragment : BaseToolbarFragment<${existingFeatureName}ViewModel, Fragment${screenName}Binding>() {
		</#if>
		<#else>
			<#if addList>
class ${screenName}Fragment : BaseListFragment<${existingFeatureName}ViewModel, Fragment${screenName}Binding, ${screenName}Item, Item${screenName}Binding>() {
				<#else>
class ${screenName}Fragment : BaseDatabindingFragment<${existingFeatureName}ViewModel, Fragment${screenName}Binding>() {
			</#if>
	</#if>

	<#else>
		<#if addToolbar>
			<#if addList>
class ${screenName}Fragment : BaseToolbarListFragment<${screenName}ViewModel, Fragment${screenName}Binding, ${screenName}Item, Item${screenName}Binding>() {
				<#else>
class ${screenName}Fragment : BaseToolbarFragment<${screenName}ViewModel, Fragment${screenName}Binding>() {
			</#if>
			<#else>
				<#if addList>
class ${screenName}Fragment : BaseListFragment<${screenName}ViewModel, Fragment${screenName}Binding, ${screenName}Item, Item${screenName}Binding>() {
					<#else>
class ${screenName}Fragment : BaseDatabindingFragment<${screenName}ViewModel, Fragment${screenName}Binding>() {
				</#if>
		</#if>
</#if>

    override val layoutId: Int = R.layout.fragment_${screenPackage}

<#if addList>
    override val itemLayoutId: Int = R.layout.item_${screenPackage}

    override fun getRecyclerView(): RecyclerView = binding.rv

    override fun getSwipeToRefreshLayout(): SwipeRefreshLayout? = binding.srl

</#if>

<#if addToolbar>
    override fun getToolbar(): Toolbar? = binding.toolbar.tb

    override fun setupBinding() {
        super.setupBinding()
        toolbarType.title.value = getString(R.string.title_${screenPackage})
    }

</#if>

}

