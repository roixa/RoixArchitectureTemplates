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

    applicationVariants.all { final variant ->
        variant.outputs.each { final output ->
            final def file = output.outputFile
            output.outputFile = new File(file.parent, file.name.replace(".apk", "-" + defaultConfig.versionName + "." + defaultConfig.versionCode + ".apk"))
        }
        variant.assemble.doLast {
            variant.outputs.each { final output ->
                final File unaligned = output.packageApplication.outputFile;
                final File aligned = output.outputFile
                if (!unaligned.getName().equalsIgnoreCase(aligned.getName())) {
                    unaligned.delete()
                }
            }
        }
    }
}

apply plugin: 'kotlin-android'

apply plugin: 'kotlin-android-extensions'

apply plugin: "kotlin-kapt"

apply from: "resources.gradle"