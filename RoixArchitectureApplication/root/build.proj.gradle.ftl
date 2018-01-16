buildscript {
    ext.kotlin_version = '1.1.51'
    ext.android_plugin_version = "3.1.0-alpha08"

    dependencies {
	    classpath "com.android.tools.build:gradle:$android_plugin_version"
        classpath "org.jetbrains.kotlin:kotlin-gradle-plugin:$kotlin_version"

    }
}