<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/toothpick/ApplicationModule.kt.ftl"
                   to="${escapeXmlAttribute(srcToothpickOut)}/common/ApplicationModule.kt" />
	<instantiate from="root/src/app_package/toothpick/ApplicationScope.kt.ftl"
                   to="${escapeXmlAttribute(srcToothpickOut)}/common/ApplicationScope.kt" />


</recipe>