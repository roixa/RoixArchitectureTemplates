<?xml version="1.0"?>
<globals>

	<global id="projectOut" value="." />

	<global id="manifestOut" type="string" value="${manifestDir}" />

	<global id="screenPackage" type="string"
		value="${camelCaseToUnderscore(screenName)}"
	/>

	<global id="itemPackage" type="string"
		value="${camelCaseToUnderscore(itemName)}"
	/>

	<global id="repositoryPackage" type="string"
		value="${camelCaseToUnderscore(repositoryName)}"
	/>

	<global id="srcRepositoryPackageOut" type="string"
		value="${srcOut}/data/repositories/${camelCaseToUnderscore(repositoryName)}"
	/>
	
	<global id="srcScreenOut" type="string"
		value="${srcOut}/ui/${camelCaseToUnderscore(screenName)}"
	/>
	
	<global id="srcToothpickScreenOut" type="string"
		value="${srcOut}/di/${camelCaseToUnderscore(screenName)}"
	/>


	<global id="srcInteractorPackageOut" type="string"
		value="${srcOut}/buissness/${camelCaseToUnderscore(screenName)}"
	/>


	<global id="srcScreenResLayoutOut" type="string"
		value="${resOut}/../${camelCaseToUnderscore(screenName)}/layout"
	/>

	<global id="srcScreenResValuesOut" type="string"
		value="${resOut}/../${camelCaseToUnderscore(screenName)}/values"
	/>

</globals>