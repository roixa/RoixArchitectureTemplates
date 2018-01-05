<?xml version="1.0"?>
<recipe>



	<instantiate from="root/res/common/drawable/ic_navigation_menu.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/drawable/ic_navigation_menu.xml" />

	<instantiate from="root/res/common/drawable/none.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/drawable/none.xml" />

	<instantiate from="root/res/common/layout/menu_item.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/layout/menu_item.xml" />
	<instantiate from="root/res/common/layout/toolbar.xml.ftl"
               to="${escapeXmlAttribute(commonResOut)}/layout/toolbar.xml" />

   	<merge from="root/res/common/values/dimens.xml.ftl"           to="${escapeXmlAttribute(commonResOut)}/values/dimens.xml" />

   	<merge from="root/res/common/values/strings.xml.ftl"
          to="${escapeXmlAttribute(commonResOut)}/values/strings.xml" />

   	<merge from="root/res/common/values/themes.xml.ftl"
          to="${escapeXmlAttribute(commonResOut)}/values/themes.xml" />


	<instantiate from="root/src/app_package/Application.kt.ftl"
                   to="${escapeXmlAttribute(srcAppOut)}/${appName}.kt" />

	<instantiate from="root/src/app_package/dagger/common/AppModule.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/AppModule.kt" />
	<instantiate from="root/src/app_package/dagger/common/CommonModule.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/CommonModule.kt" />
	
	<instantiate from="root/src/app_package/dagger/common/AppComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/AppComponent.kt" />

	<instantiate from="root/src/app_package/data/Parseble.kt.ftl"
                   to="${escapeXmlAttribute(srcDataOut)}/Parseble.kt" />

</recipe>