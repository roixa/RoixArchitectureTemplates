
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

kapt {
    generateStubs = true

    arguments {
        arg("toothpick_registry_package_name", "${packageName}")
        arg("toothpick_registry_children_package_names", "toothpick.smoothie")
    }
}

apply from: "resources.gradle"

