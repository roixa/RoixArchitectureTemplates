<?xml version="1.0"?>
<globals>

	<#if addScreenToFeature>
			<global id="featureName" type="string"
				value="${existingFeatureName}"
			/>

		<#else>
			<global id="featureName" type="string"
				value="${screenName}"
			/>

	</#if>



</globals>