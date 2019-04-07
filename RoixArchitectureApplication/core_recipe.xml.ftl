<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/Application.kt.ftl"
                   to="${escapeXmlAttribute(srcAppOut)}/${appName}.kt" />

	<instantiate from="root/src/app_package/data/Parseble.kt.ftl"
                   to="${escapeXmlAttribute(srcDataOut)}/common/Parseble.kt" />

	<instantiate from="root/src/app_package/utils/binding/BindingObservableUtils.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/binding/BindingObservableUtils.kt" />

	<instantiate from="root/src/app_package/utils/binding/DataBinder.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/binding/DataBinder.kt" />
				   
	<instantiate from="root/src/app_package/utils/rx/RxSchedulers.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/rx/general/RxSchedulers.kt" />
				   
	<instantiate from="root/src/app_package/utils/rx/RxSchedulersAbs.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/rx/general/RxSchedulersAbs.kt" />
				   
	<instantiate from="root/src/app_package/utils/rx/RxSchedulersTest.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/rx/general/RxSchedulersTest.kt" />

	<instantiate from="root/src/app_package/utils/ui/ItemClickSupport.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/ui/ItemClickSupport.kt" />

	<instantiate from="root/src/app_package/utils/ui/LiveDataExtensions.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/ui/LiveDataExtensions.kt" />

 	<instantiate from="root/res/common/layout/navigation.xml.ftl"
			to="${escapeXmlAttribute(appResOut)}/navigation/app_nav_graph.xml" />

 	<instantiate from="root/res/common/layout/activity_app.xml.ftl"
			to="${escapeXmlAttribute(appResOut)}/layout/activity_app.xml" />

	<instantiate from="root/src/app_package/AppActivity.kt.ftl"
				to="${escapeXmlAttribute(srcAppScreenOut)}/views/AppActivity.kt" />


</recipe>