<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/Application.kt.ftl"
                   to="${escapeXmlAttribute(srcAppOut)}/${appName}.kt" />

	<instantiate from="root/src/app_package/data/Parseble.kt.ftl"
                   to="${escapeXmlAttribute(srcDataOut)}/Parseble.kt" />

	<instantiate from="root/src/app_package/utils/binding/BindingObservableUtils.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/binding/BindingObservableUtils.kt" />

	<instantiate from="root/src/app_package/utils/binding/DataBinder.kt.ftl"
                   to="${escapeXmlAttribute(srcUtilsOut)}/binding/DataBinder.kt" />




</recipe>