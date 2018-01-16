<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/common/activities/BaseDatabindingActivity.kt.ftl"
              to="${escapeXmlAttribute(srcCommonOut)}/activities/BaseDatabindingActivity.kt" />

	<instantiate from="root/src/app_package/common/activities/BaseLifecycleActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/activities/BaseLifecycleActivity.kt" />

	<instantiate from="root/src/app_package/common/activities/BaseListActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/activities/BaseListActivity.kt" />

	<instantiate from="root/src/app_package/common/activities/BaseToolbarActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/activities/BaseToolbarActivity.kt" />

	<instantiate from="root/src/app_package/common/activities/BaseSingleFragmentActivity.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/activities/BaseSingleFragmentActivity.kt" />

	<instantiate from="root/src/app_package/common/fragments/BaseDatabindingFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/fragments/BaseDatabindingFragment.kt" />
	
	<instantiate from="root/src/app_package/common/fragments/BaseListFragment.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/fragments/BaseListFragment.kt" />

	<instantiate from="root/src/app_package/common/adapters/BaseDataBindingAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/adapters/BaseDataBindingAdapter.kt" />

	<instantiate from="root/src/app_package/common/adapters/BaseMultyTypeObservableAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/adapters/BaseMultyTypeObservableAdapter.kt" />

	<instantiate from="root/src/app_package/common/adapters/BaseObservableAdapter.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/adapters/BaseObservableAdapter.kt" />

	<instantiate from="root/src/app_package/common/adapters/DataChangedListener.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/adapters/DataChangedListener.kt" />

	<instantiate from="root/src/app_package/common/loading/ILoadingObserver.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/loading/ILoadingObserver.kt" />

	<instantiate from="root/src/app_package/common/loading/LoadingLiveData.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/loading/LoadingLiveData.kt" />

	<instantiate from="root/src/app_package/common/loading/LoadingObservableBoolean.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/loading/LoadingObservableBoolean.kt" />

	<instantiate from="root/src/app_package/common/view/ToolbarType.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/view/ToolbarType.kt" />

	<instantiate from="root/src/app_package/common/viewmodels/BaseDatabindingViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/viewmodels/BaseDatabindingViewModel.kt" />

	<instantiate from="root/src/app_package/common/viewmodels/BaseLifecycleViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/viewmodels/BaseLifecycleViewModel.kt" />

	<instantiate from="root/src/app_package/common/viewmodels/BaseListViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/viewmodels/BaseListViewModel.kt" />

	<instantiate from="root/src/app_package/common/viewmodels/BaseViewModel.kt.ftl"
                   to="${escapeXmlAttribute(srcCommonOut)}/viewmodels/BaseViewModel.kt" />

	<instantiate from="root/src/app_package/buissness/common/IBaseListInteractor.kt.ftl"
                   to="${escapeXmlAttribute(srcOut)}/buissness/common/IBaseListInteractor.kt" />

</recipe>