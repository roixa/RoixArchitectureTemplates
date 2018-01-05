<?xml version="1.0"?>
<globals>

	<global id="appName" type="string"
		value="${applicationName}Application"
	/>

	<global id="projectOut" value="." />

	<global id="manifestOut" type="string" value="${manifestDir}" />

	<global id="srcApp" type="string"
		value="${packageName}.application"
	/>
	<global id="srcAppOut" type="string"
		value="${srcOut}/application"
	/>
	<global id="srcDaggerOut" type="string"
		value="${srcOut}/dagger"
	/>
	<global id="srcDataOut" type="string"
		value="${srcOut}/data"
	/>
	<global id="srcCommonOut" type="string"
		value="${srcOut}/ui/common"
	/>
	<global id="srcUtilsOut" type="string"
		value="${srcOut}/utils"
	/>

	<global id="commonResOut" type="string"
		value="${resOut}/common"
	/>
	
		<global id="srcScreenOut" type="string"
		value="${srcOut}/${slashedPackageName(screenPackage)}"
	/>
	<global id="srcScreenPackage" type="string"
		value="${packageName}.${screenPackage}"
	/>
	<global id="srcCommonPackage" type="string"
		value="${packageName}.ui.common" 
	/>
	<global id="srcInteractorPackageOut" type="string"
		value="${srcOut}/business/${screenName}}"
	/>
	<global id="srcInteractorPackage" type="string"
		value="${camelCaseToUnderscore(screenName)}"
	/>
	<global id="screenLayoutName" type="string"
		value="Activity${screenName}" 
	/>

	<global id="viewType" type="string"
		value="BaseListActivity"
	/>



</globals>