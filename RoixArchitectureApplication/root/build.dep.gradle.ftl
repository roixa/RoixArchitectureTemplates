dependencies {
    final def supportLibraryVersion = "26.1.0"
    final def daggerVersion = "2.10"
    final def retrofitVersion = "2.3.0"
    final def okhttpVersion = "3.8.1"
    final def architectureComponentsVersion = "1.0.0"
    final def permissionVersion = "2.4.0"
    final def picassoVersion = "2.5.2"
    //arcitecture components
    implementation "android.arch.lifecycle:common-java8:$architectureComponentsVersion"
    implementation "android.arch.lifecycle:extensions:$architectureComponentsVersion"
    implementation "android.arch.lifecycle:reactivestreams:$architectureComponentsVersion"
    //room
    implementation "android.arch.persistence.room:runtime:$architectureComponentsVersion"
    annotationProcessor "android.arch.persistence.room:compiler:$architectureComponentsVersion"
    implementation "android.arch.persistence.room:rxjava2:$architectureComponentsVersion"
    // Dagger 2
    implementation "com.google.dagger:dagger:$daggerVersion"
    kapt "com.google.dagger:dagger-compiler:$daggerVersion"
    // RxJava 2
    implementation 'io.reactivex.rxjava2:rxjava:2.1.1'
    implementation 'io.reactivex.rxjava2:rxandroid:2.0.1'
    //Kotlin
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jre7:$kotlin_version"
    kapt "com.android.databinding:compiler:$android_plugin_version"
    implementation 'com.android.support.constraint:constraint-layout:1.0.2'
    // Permission Dispatcher
    implementation "com.github.hotchemi:permissionsdispatcher:$permissionVersion"
    kapt "com.github.hotchemi:permissionsdispatcher-processor:$permissionVersion"
    //Picasso
    compile "com.squareup.picasso:picasso:$picassoVersion"
    // Support
    implementation "com.android.support:appcompat-v7:$supportLibraryVersion"
    implementation "com.android.support:support-v13:$supportLibraryVersion"
    implementation "com.android.support:design:$supportLibraryVersion"
    implementation "com.android.support:customtabs:$supportLibraryVersion"
    implementation "com.android.support:cardview-v7:$supportLibraryVersion"
    implementation "com.android.support:support-v4:$supportLibraryVersion"
    // Retrofit 2
    implementation "com.squareup.retrofit2:retrofit:$retrofitVersion"
    implementation "com.squareup.retrofit2:converter-gson:$retrofitVersion"
    implementation "com.squareup.okhttp3:okhttp:$okhttpVersion"
    implementation "com.squareup.okhttp3:logging-interceptor:$okhttpVersion"
    implementation "com.squareup.retrofit2:adapter-rxjava2:$retrofitVersion"
}

