<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/screen/IRepository.kt.ftl"
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/I${repositoryName}Repository.kt" />

	<instantiate from="root/src/app_package/screen/Repository.kt.ftl"
     	 to="${escapeXmlAttribute(srcRepositoryPackageOut)}/${repositoryName}Repository.kt" />

	
</recipe>