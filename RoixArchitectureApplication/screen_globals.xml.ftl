<?xml version="1.0"?>
<globals>

	<global id="projectOut" value="." />

	<global id="manifestOut" type="string" value="${manifestDir}" />

	<global id="screenPackage" type="string"
		value="${camelCaseToUnderscore(screenName)}"
	/>

	<global id="existingFeaturePackage" type="string"
		value="${camelCaseToUnderscore(existingFeatureName)}"
	/>

	<global id="srcRepositoryPackageOut" type="string"
		value="${srcOut}/data/repositories/${camelCaseToUnderscore(screenName)}"
	/>
	
	<global id="srcScreenOut" type="string"
		value="${srcOut}/ui/${camelCaseToUnderscore(screenName)}"
	/>

	<global id="srcExistingFeatureOut" type="string"
		value="${srcOut}/ui/${camelCaseToUnderscore(existingFeatureName)}"
	/>
	
	<global id="srcToothpickScreenOut" type="string"
		value="${srcOut}/di/${camelCaseToUnderscore(screenName)}"
	/>


	<global id="srcInteractorPackageOut" type="string"
		value="${srcOut}/buissness/${camelCaseToUnderscore(screenName)}"
	/>

	<global id="srcItemPackageOut" type="string"
		value="${srcOut}/data/models"
	/>

	<global id="srcScreenResLayoutOut" type="string"
		value="${resOut}/../res/${camelCaseToUnderscore(screenName)}/layout"
	/>

	<global id="srcScreenResValuesOut" type="string"
		value="${resOut}/../res/${camelCaseToUnderscore(screenName)}/values"
	/>

	<global id="srcExistingFeatureResLayoutOut" type="string"
		value="${resOut}/../res/${camelCaseToUnderscore(existingFeatureName)}/layout"
	/>

	<global id="srcExistingFeatureResValuesOut" type="string"
		value="${resOut}/../res/${camelCaseToUnderscore(existingFeatureName)}/values"
	/>




</globals>