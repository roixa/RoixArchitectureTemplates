<?xml version="1.0"?>
<recipe>

	<merge from="root/resources.gradle.ftl"
                to="${escapeXmlAttribute(projectOut)}/build.gradle" />


	<instantiate from="root/src/app_package/screen/ModuleWithRepository.kt.ftl"
     	to="${escapeXmlAttribute(srcToothpickScreenOut)}/${screenName}Module.kt" />

		
	<instantiate from="root/src/app_package/screen/empty_strings.xml.ftl"
     	to="${escapeXmlAttribute(srcScreenResValuesOut)}/strings.xml" />

     <instantiate from="root/src/app_package/screen/DatabindingFragment.kt.ftl"
     	to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Fragment.kt" />

	<instantiate from="root/src/app_package/screen/fragment_databinding.xml.ftl"
     	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/fragment_${screenPackage}.xml" />

	<instantiate from="root/src/app_package/screen/DatabindingViewModel.kt.ftl"
    	to="${escapeXmlAttribute(srcScreenOut)}/viewmodels/${screenName}ViewModel.kt" />

    <instantiate from="root/src/app_package/screen/IInteractor.kt.ftl"
     	to="${escapeXmlAttribute(srcInteractorPackageOut)}/I${screenName}Interactor.kt" />


     <instantiate from="root/src/app_package/screen/InteractorWithRepository.kt.ftl"
     	to="${escapeXmlAttribute(srcInteractorPackageOut)}/${screenName}Interactor.kt" />

	<instantiate from="root/src/app_package/screen/IRepository.kt.ftl"
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/I${repositoryName}Repository.kt" />

	<instantiate from="root/src/app_package/screen/Repository.kt.ftl"
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/${repositoryName}Repository.kt" />

<!-- 	<#if viewType == 'toolbarActivity'>
	
			<instantiate from="root/src/app_package/screen/ToolbarActivity.kt.ftl"
     	           to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Activity.kt" />
			<instantiate from="root/src/app_package/screen/activity_toolbar.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/activity_${screenPackage}.xml" />
				   
				
	<#elseif viewType == 'baseFragment'>
	
			<instantiate from="root/src/app_package/screen/DatabindingFragment.kt.ftl"
     	           to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Fragment.kt" />
			<instantiate from="root/src/app_package/screen/activity_databinding.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/fragment_${screenPackage}.xml" />
				
	<#elseif viewType == 'listFragment'>
	
			<instantiate from="root/src/app_package/screen/ListFragment.kt.ftl"
     	           to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Fragment.kt" />
			<instantiate from="root/src/app_package/screen/activity_list.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/fragment_${screenPackage}.xml" />
			<instantiate from="root/src/app_package/screen/item_list.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/item_${itemPackage}.xml" />
			<instantiate from="root/src/app_package/screen/ListItem.kt.ftl"
     		 	to="${escapeXmlAttribute(srcItemPackageOut)}/${itemName}Item.kt" />
				
	</#if>
		
			<instantiate from="root/src/app_package/screen/DatabindingViewModel.kt.ftl"
     	        to="${escapeXmlAttribute(srcScreenOut)}/viewmodels/${screenName}ViewModel.kt" />

			<instantiate from="root/src/app_package/screen/IInteractor.kt.ftl"
     	        to="${escapeXmlAttribute(srcInteractorPackageOut)}/I${screenName}Interactor.kt" />
	
			<#if provideRepository>
				<instantiate from="root/src/app_package/screen/InteractorOne.kt.ftl"
     	           	to="${escapeXmlAttribute(srcInteractorPackageOut)}/${screenName}Interactor.kt" />
			<#else>
				<instantiate from="root/src/app_package/screen/InteractorZero.kt.ftl"
					to="${escapeXmlAttribute(srcInteractorPackageOut)}/${screenName}Interactor.kt" />
			</#if>

	</#if>
	
 -->
</recipe>