<?xml version="1.0"?>
<recipe>

	<instantiate from="root/res/common/drawable/ic_back.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/drawable/ic_back.xml" />


	<instantiate from="root/res/common/drawable/ic_navigation_menu.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/drawable/ic_navigation_menu.xml" />

	<instantiate from="root/res/common/drawable/none.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/drawable/none.xml" />

	<instantiate from="root/res/common/layout/menu_item.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/layout/menu_item.xml" />

	<instantiate from="root/res/common/layout/base_item_list.xml.ftl"
                to="${escapeXmlAttribute(commonResOut)}/layout/base_item_list.xml" />

	<instantiate from="root/res/common/layout/toolbar.xml.ftl"
               to="${escapeXmlAttribute(commonResOut)}/layout/toolbar.xml" />

   	<merge from="root/res/common/values/dimens.xml.ftl"           
			to="${escapeXmlAttribute(commonResOut)}/values/dimens.xml" />

   	<merge from="root/res/common/values/strings.xml.ftl"
          to="${escapeXmlAttribute(commonResOut)}/values/strings.xml" />

   	<merge from="root/res/common/values/themes.xml.ftl"
          to="${escapeXmlAttribute(commonResOut)}/values/themes.xml" />

   	<merge from="root/res/common/values/colors.xml.ftl"
          to="${escapeXmlAttribute(commonResOut)}/values/colors.xml" />
		  
	<merge from="root/res/common/values/ids.xml.ftl"
          to="${escapeXmlAttribute(commonResOut)}/values/ids.xml" />

</recipe>



