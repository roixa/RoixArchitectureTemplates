<?xml version="1.0"?>
<globals>

	<global id="screenPackage" type="string"
		value="${camelCaseToUnderscore(screenName)}"
	/>

	<global id="itemPackage" type="string"
		value="${camelCaseToUnderscore(itemName)}"
	/>

	<global id="repositoryPackage" type="string"
		value="${camelCaseToUnderscore(repositoryName)}"
	/>



	
	<global id="srcScreenOut" type="string"
		value="${srcOut}/ui/${camelCaseToUnderscore(screenName)}"
	/>
	<global id="srcDaggerScreenOut" type="string"
		value="${srcOut}/dagger/${camelCaseToUnderscore(screenName)}"
	/>

	<global id="srcInteractorPackageOut" type="string"
		value="${srcOut}/business/${camelCaseToUnderscore(screenName)}"
	/>

	<global id="srcRepositoryPackageOut" type="string"
		value="${srcOut}/repositories/${camelCaseToUnderscore(repositoryName)}"
	/>

	<global id="srcItemPackageOut" type="string"
		value="${srcOut}/data/models"
	/>

	<global id="srcScreenResLayoutOut" type="string"
		value="${resDir}/${camelCaseToUnderscore(screenName)}/layout"
	/>



</globals>