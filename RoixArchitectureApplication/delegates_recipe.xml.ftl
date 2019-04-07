<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/common/delegates/view/databinding/DatabindingHandleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/databinding/DatabindingHandleDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/view/databinding/IDatabindingHandleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/databinding/IDatabindingHandleDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/view/databinding/LayoutIdProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/databinding/LayoutIdProvider.kt" />

	

	<instantiate from="root/src/app_package/common/delegates/view/sub_livedata/ILiveDataSubscriptionDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/sub_livedata/ILiveDataSubscriptionDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/view/sub_livedata/LiveDataSubscriptionDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/sub_livedata/LiveDataSubscriptionDelegate.kt" />



	<instantiate from="root/src/app_package/common/delegates/view/toolbar/IToolbarDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/toolbar/IToolbarDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/view/toolbar/ToolbarDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/toolbar/ToolbarDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/view/toolbar/ToolbarProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/view/toolbar/ToolbarProvider.kt" />



	<instantiate from="root/src/app_package/common/delegates/viewmodel/core/IViewModelLyfecycleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/viewmodel/core/IViewModelLyfecycleDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/viewmodel/core/ViewModelLifecycleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/viewmodel/core/ViewModelLifecycleDelegate.kt" />


    <instantiate from="root/src/app_package/common/delegates/viewmodel/di_toothpick/DIToothpickDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/viewmodel/di_toothpick/DIToothpickDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/viewmodel/di_toothpick/IDIDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/viewmodel/di_toothpick/IDIDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/viewmodel/di_toothpick/ModuleProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/viewmodel/di_toothpick/ModuleProvider.kt" />



    <instantiate from="root/src/app_package/common/delegates/viewmodel/sub_rx/IRxSubscriptionDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/viewmodel/sub_rx/IRxSubscriptionDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/viewmodel/sub_rx/RxSubscriptionDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/viewmodel/sub_rx/RxSubscriptionDelegate.kt" />



	<instantiate from="root/src/app_package/common/delegates/vvm/core/IViewModelHandleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/core/IViewModelHandleDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/vvm/core/ViewModelHandleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/core/ViewModelHandleDelegate.kt" />


	<instantiate from="root/src/app_package/common/delegates/vvm/error/ErrorHandleViewDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/error/ErrorHandleViewDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/vvm/error/ErrorHandleViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/error/ErrorHandleViewModelDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/vvm/error/IErrorHandleViewDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/error/IErrorHandleViewDelegate.kt" />
	<instantiate from="root/src/app_package/common/delegates/vvm/error/IErrorHandleViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/error/IErrorHandleViewModelDelegate.kt" />

    <instantiate from="root/src/app_package/common/delegates/vvm/list/IListHandleViewDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/list/IListHandleViewDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/list/IListHandleViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/list/IListHandleViewModelDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/list/ListHandleViewDelagate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/list/ListHandleViewDelagate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/list/ListHandleViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/list/ListHandleViewModelDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/list/ListLiveData.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/list/ListLiveData.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/list/ListViewProvider.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/list/ListViewProvider.kt" />


    <instantiate from="root/src/app_package/common/delegates/vvm/loading/ILoadingHandleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/loading/ILoadingHandleDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/loading/ILoadingViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/loading/ILoadingViewModelDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/loading/LoadingHandleDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/loading/LoadingHandleDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/loading/LoadingViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/loading/LoadingViewModelDelegate.kt" />

    <instantiate from="root/src/app_package/common/delegates/vvm/message/IShowMessageDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/message/IShowMessageDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/loading/IShowMessageHandleViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/loading/IShowMessageHandleViewModelDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/loading/ShowMessageDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/loading/ShowMessageDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/loading/ShowMessageHandleViewModelDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/loading/ShowMessageHandleViewModelDelegate.kt" />

    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/commands/ActionCommand.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/commands/ActionCommand.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/commands/BackScreenCommand.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/commands/BackScreenCommand.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/commands/BackToScreenCommand.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/commands/BackToScreenCommand.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/commands/ForwardScreenCommand.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/commands/ForwardScreenCommand.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/commands/ScreenCommand.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/commands/ScreenCommand.kt" />

    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/INavigationDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/INavigationDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/IViewModelNavigationDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/IViewModelNavigationDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/NavigationDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/NavigationDelegate.kt" />
    <instantiate from="root/src/app_package/common/delegates/vvm/navigation/ViewModelNavigationDelegate.kt.ftl"
                   to="${escapeXmlAttribute(srcDelegatesOut)}/vvm/navigation/ViewModelNavigationDelegate.kt" />

</recipe>