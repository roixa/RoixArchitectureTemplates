<?xml version="1.0"?>
<recipe>

 	<merge from="root/app_nav_graph.xml.ftl"
			to="${escapeXmlAttribute(navNavigationResOut)}/app_nav_graph.xml" />


		

	<#if addScreenToFeature>

		<#if addToolbar>

			<instantiate from="root/src/app_package/screen/ToolbarFragment.kt.ftl"
			   	to="${escapeXmlAttribute(srcExistingFeatureOut)}/views/${screenName}Fragment.kt" />

			<instantiate from="root/src/app_package/screen/fragment_toolbar.xml.ftl"
			    to="${escapeXmlAttribute(srcExistingFeatureResLayoutOut)}/fragment_${screenPackage}.xml" />

				<#else>

					<instantiate from="root/src/app_package/screen/DatabindingFragment.kt.ftl"
					     to="${escapeXmlAttribute(srcExistingFeatureOut)}/views/${screenName}Fragment.kt" />

					<instantiate from="root/src/app_package/screen/fragment_databinding.xml.ftl"
					     to="${escapeXmlAttribute(srcExistingFeatureResLayoutOut)}/fragment_${screenPackage}.xml" />


		</#if>

		<merge from="root/src/app_package/screen/empty_strings.xml.ftl"
     	to="${escapeXmlAttribute(srcExistingFeatureResValuesOut)}/strings.xml" />

		<#else>

			<#if addToolbar>

		    	<instantiate from="root/src/app_package/screen/ToolbarFragment.kt.ftl"
		     		to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Fragment.kt" />

				<instantiate from="root/src/app_package/screen/fragment_toolbar.xml.ftl"
		     		to="${escapeXmlAttribute(srcScreenResLayoutOut)}/fragment_${screenPackage}.xml" />

				<#else>

				    <instantiate from="root/src/app_package/screen/DatabindingFragment.kt.ftl"
				     	to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Fragment.kt" />

					<instantiate from="root/src/app_package/screen/fragment_databinding.xml.ftl"
				     	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/fragment_${screenPackage}.xml" />


			</#if>

			<instantiate from="root/src/app_package/screen/empty_strings.xml.ftl"
	     	to="${escapeXmlAttribute(srcScreenResValuesOut)}/strings.xml" />

	</#if>


	<#if !addScreenToFeature>

		<merge from="root/resources.gradle.ftl"
                to="${escapeXmlAttribute(projectOut)}/build.gradle" />


		<instantiate from="root/src/app_package/screen/ModuleWithRepository.kt.ftl"
	     	to="${escapeXmlAttribute(srcToothpickScreenOut)}/${screenName}Module.kt" />


		<instantiate from="root/src/app_package/screen/DatabindingViewModel.kt.ftl"
	    	to="${escapeXmlAttribute(srcScreenOut)}/viewmodels/${screenName}ViewModel.kt" />

	    <instantiate from="root/src/app_package/screen/IInteractor.kt.ftl"
	     	to="${escapeXmlAttribute(srcInteractorPackageOut)}/I${screenName}Interactor.kt" />


	     <instantiate from="root/src/app_package/screen/InteractorWithRepository.kt.ftl"
	     	to="${escapeXmlAttribute(srcInteractorPackageOut)}/${screenName}Interactor.kt" />

		<instantiate from="root/src/app_package/screen/IRepository.kt.ftl"
	     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/I${screenName}Repository.kt" />

		<instantiate from="root/src/app_package/screen/Repository.kt.ftl"
	     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/${screenName}Repository.kt" />


	</#if>




</recipe>