<?xml version="1.0"?>
<recipe>
 	<merge from="root/app_nav_graph.xml.ftl"
			to="${escapeXmlAttribute(appResOut)}/navigation/app_nav_graph.xml" />

	<#if addScreenToFeature>

		<merge from="root/src/app_package/screen/empty_strings.xml.ftl"
     	to="${escapeXmlAttribute(srcExistingFeatureResValuesOut)}/strings.xml" />

		<instantiate from="root/src/app_package/screen/fragment_databinding.xml.ftl"
			to="${escapeXmlAttribute(srcExistingFeatureResLayoutOut)}/fragment_${screenPackage}.xml" />

		<instantiate from="root/src/app_package/screen/DatabindingFragment.kt.ftl"
			to="${escapeXmlAttribute(srcExistingFeatureOut)}/views/${screenName}Fragment.kt" />


	    <#if addList>
	        <instantiate from="root/src/app_package/screen/item_list.xml.ftl"
	     		to="${escapeXmlAttribute(srcExistingFeatureResLayoutOut)}/item_${screenPackage}.xml" />

			<instantiate from="root/src/app_package/screen/ListItem.kt.ftl"
	     		 to="${escapeXmlAttribute(srcItemPackageOut)}/${screenName}Item.kt" />
	    </#if>

		<#else>

			<instantiate from="root/src/app_package/screen/empty_strings.xml.ftl"
	     	to="${escapeXmlAttribute(srcScreenResValuesOut)}/strings.xml" />

	   		<instantiate from="root/src/app_package/screen/fragment_databinding.xml.ftl"
				to="${escapeXmlAttribute(srcScreenResLayoutOut)}/fragment_${screenPackage}.xml" />

			<instantiate from="root/src/app_package/screen/DatabindingFragment.kt.ftl"
				to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Fragment.kt" />

		    <#if addList>
			        <instantiate from="root/src/app_package/screen/item_list.xml.ftl"
			     		to="${escapeXmlAttribute(srcScreenResLayoutOut)}/item_${screenPackage}.xml" />

					<instantiate from="root/src/app_package/screen/ListItem.kt.ftl"
			     		 to="${escapeXmlAttribute(srcItemPackageOut)}/${screenName}Item.kt" />
			    </#if>

	</#if>


	<#if !addScreenToFeature>

		<merge from="root/resources.gradle.ftl"
                to="${escapeXmlAttribute(projectOut)}/build.gradle" />

		<instantiate from="root/src/app_package/screen/DatabindingViewModel.kt.ftl"
	    	to="${escapeXmlAttribute(srcScreenOut)}/viewmodels/${screenName}ViewModel.kt" />

		<instantiate from="root/src/app_package/screen/Module.kt.ftl"
		     	to="${escapeXmlAttribute(srcToothpickScreenOut)}/${screenName}Module.kt" />

		<#if !notGenerateInteractor>
			<instantiate from="root/src/app_package/screen/Interactor.kt.ftl"
				to="${escapeXmlAttribute(srcInteractorPackageOut)}/${screenName}Interactor.kt" />

			<instantiate from="root/src/app_package/screen/IInteractor.kt.ftl"
		     	to="${escapeXmlAttribute(srcInteractorPackageOut)}/I${screenName}Interactor.kt" />

			<#if !notGenerateRepository>

				<instantiate from="root/src/app_package/screen/IRepository.kt.ftl"
				     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/I${screenName}Repository.kt" />

				<instantiate from="root/src/app_package/screen/Repository.kt.ftl"
				    to="${escapeXmlAttribute(srcRepositoryPackageOut)}/${screenName}Repository.kt" />

			</#if>

		</#if>


	</#if>

</recipe>