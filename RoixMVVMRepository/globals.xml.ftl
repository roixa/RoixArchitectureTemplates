<?xml version="1.0"?>
<globals>


	<global id="srcDaggerOut" type="string"
		value="${srcOut}/dagger"
	/>


	<global id="repositoryPackage" type="string"
		value="${camelCaseToUnderscore(repositoryName)}"
	/>

	<global id="srcDaggerRepositoryOut" type="string"
		value="${srcOut}/dagger/${camelCaseToUnderscore(repositoryName)}"
	/>


	<global id="srcRepositoryPackageOut" type="string"
		value="${srcOut}/repositories/${camelCaseToUnderscore(repositoryName)}"
	/>


</globals>