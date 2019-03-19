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
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/I${screenName}Repository.kt" />

	<instantiate from="root/src/app_package/screen/Repository.kt.ftl"
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/${screenName}Repository.kt" />

</recipe>