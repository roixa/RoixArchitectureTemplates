<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/common/fragments/BaseDatabindingFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/fragments/BaseDatabindingFragment.kt" />
	
	<instantiate from="root/src/app_package/common/fragments/BaseListFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/fragments/BaseListFragment.kt" />

	<instantiate from="root/src/app_package/common/fragments/BaseToolbarFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/fragments/BaseToolbarFragment.kt" />
	
	<instantiate from="root/src/app_package/common/fragments/BaseToolbarListFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/fragments/BaseToolbarListFragment.kt" />
	

	<instantiate from="root/src/app_package/common/adapters/BaseDataBindingAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/adapters/BaseDataBindingAdapter.kt" />

	<instantiate from="root/src/app_package/common/loading/ILoadingObserver.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/loading/ILoadingObserver.kt" />

	<instantiate from="root/src/app_package/common/loading/LoadingLiveData.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/loading/LoadingLiveData.kt" />

	<instantiate from="root/src/app_package/common/view/ToolbarType.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/view/ToolbarType.kt" />

	<instantiate from="root/src/app_package/common/viewmodels/BaseListViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/viewmodels/BaseListViewModel.kt" />

	<instantiate from="root/src/app_package/common/viewmodels/BaseViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/viewmodels/BaseViewModel.kt" />

</recipe>