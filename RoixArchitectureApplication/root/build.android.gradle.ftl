android {
	buildTypes {
        debug {
            debuggable true

            minifyEnabled false
            multiDexEnabled false

            signingConfig signingConfigs.debug
        }
        release {
            multiDexEnabled false
            minifyEnabled true

            signingConfig signingConfigs.debug
        }
    }

    compileOptions {
        sourceCompatibility JavaVersion.VERSION_1_8
        targetCompatibility JavaVersion.VERSION_1_8
    }

    dataBinding {
        enabled true
    }

    defaultConfig {
        vectorDrawables.useSupportLibrary true
    }

    lintOptions {
        abortOnError false
    }

}

apply plugin: 'kotlin-android'

apply plugin: 'kotlin-android-extensions'

apply plugin: "kotlin-kapt"

apply from: "resources.gradle"