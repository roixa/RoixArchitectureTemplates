<?xml version="1.0"?>
<recipe>

	<instantiate from="root/src/app_package/dagger/common/AppModule.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/AppModule.kt" />
	<instantiate from="root/src/app_package/dagger/common/CommonModule.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/CommonModule.kt" />
	
	<instantiate from="root/src/app_package/dagger/common/AppComponent.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/AppComponent.kt" />

	<instantiate from="root/src/app_package/dagger/common/RepositoriesModule.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/RepositoriesModule.kt" />

	<instantiate from="root/src/app_package/dagger/common/ScreensModule.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/ScreensModule.kt" />

	<instantiate from="root/src/app_package/dagger/common/ViewModelScope.kt.ftl"
                   to="${escapeXmlAttribute(srcDaggerOut)}/common/ViewModelScope.kt" />


</recipe>