<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/screen/IRepository.kt.ftl"
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/I${repositoryName}Repository.kt" />

	<instantiate from="root/src/app_package/screen/Repository.kt.ftl"
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/${repositoryName}Repository.kt" />

	<instantiate from="root/src/app_package/screen/RepositoryModule.kt.ftl"
     	 to="${escapeXmlAttribute(srcDaggerRepositoryOut)}/${repositoryName}RepositoryModule.kt" />


	    <open file="${escapeXmlAttribute(srcDaggerOut)}/common/AppComponent.kt" />	
	    <open file="${escapeXmlAttribute(srcDaggerOut)}/common/ArchitectureModule.kt" />	

	
</recipe>