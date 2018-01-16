<?xml version="1.0"?>
<recipe>

   	<merge from="root/AndroidManifest.xml.ftl"
        to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />

	<instantiate from="root/src/app_package/screen/Module.kt.ftl"
     	to="${escapeXmlAttribute(srcToothpickScreenOut)}/${screenName}Module.kt" />

	<#if viewType == 'toolbarActivity'>
	
			<instantiate from="root/src/app_package/screen/ToolbarActivity.kt.ftl"
     	           to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Activity.kt" />
			<instantiate from="root/src/app_package/screen/activity_toolbar.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/activity_${screenPackage}.xml" />
				   
	<#elseif viewType == 'baseActivity'>
	
			<instantiate from="root/src/app_package/screen/DatabindingActivity.kt.ftl"
     	           to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Activity.kt" />
			<instantiate from="root/src/app_package/screen/activity_databinding.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/activity_${screenPackage}.xml" />
				
	<#elseif viewType == 'listActivity'>
	
			<instantiate from="root/src/app_package/screen/ListActivity.kt.ftl"
     	           to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Activity.kt" />
			<instantiate from="root/src/app_package/screen/activity_list.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/activity_${screenPackage}.xml" />
			<instantiate from="root/src/app_package/screen/item_list.xml.ftl"
     		 	to="${escapeXmlAttribute(srcScreenResLayoutOut)}/item_${itemPackage}.xml" />
			<instantiate from="root/src/app_package/screen/ListItem.kt.ftl"
     		 	to="${escapeXmlAttribute(srcItemPackageOut)}/${itemName}Item.kt" />
				
	<#elseif viewType == 'singleFragmentActivity'>
	
			<instantiate from="root/src/app_package/screen/SingleFragmentActivity.kt.ftl"
     	           to="${escapeXmlAttribute(srcScreenOut)}/views/${screenName}Activity.kt" />
			<instantiate from="root/src/app_package/screen/activity_single_fragment.xml.ftl"
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

	<#if viewType == 'listActivity' || viewType == 'listFragment'>
	
		<instantiate from="root/src/app_package/screen/ListViewModel.kt.ftl"
     	        to="${escapeXmlAttribute(srcScreenOut)}/viewmodels/${screenName}ViewModel.kt" />
				
		<instantiate from="root/src/app_package/screen/IListInteractor.kt.ftl"
     	           to="${escapeXmlAttribute(srcInteractorPackageOut)}/I${screenName}Interactor.kt" />

		<#if provideRepository>
				<instantiate from="root/src/app_package/screen/ListInteractorOne.kt.ftl"
     	           	to="${escapeXmlAttribute(srcInteractorPackageOut)}/${screenName}Interactor.kt" />
			<#else>
				<instantiate from="root/src/app_package/screen/ListInteractorZero.kt.ftl"
     	           	to="${escapeXmlAttribute(srcInteractorPackageOut)}/${screenName}Interactor.kt" />
			</#if>


	<#else>
		
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

</recipe>