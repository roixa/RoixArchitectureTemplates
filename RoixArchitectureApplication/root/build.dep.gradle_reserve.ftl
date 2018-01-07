dependencies {


    //arcitecture components

    implementation "android.arch.lifecycle:common-java8:1.0.0"
    implementation "android.arch.lifecycle:extensions:1.0.0"
    implementation "android.arch.lifecycle:reactivestreams:1.0.0"
    //room
    implementation "android.arch.persistence.room:runtime:1.0.0"
    annotationProcessor "android.arch.persistence.room:compiler:1.0.0"
    implementation "android.arch.persistence.room:rxjava2:1.0.0"
    // Dagger 2
    implementation "com.google.dagger:dagger:2.10"
    kapt "com.google.dagger:dagger-compiler:2.10"
    // RxJava 2
    implementation 'io.reactivex.rxjava2:rxjava:2.1.1'
    implementation 'io.reactivex.rxjava2:rxandroid:2.0.1'
    //Kotlin
    implementation "org.jetbrains.kotlin:kotlin-stdlib-jre7:$kotlin_version"
    kapt "com.android.databinding:compiler:$android_plugin_version"
    implementation 'com.android.support.constraint:constraint-layout:1.0.2'
    // Permission Dispatcher
    implementation "com.github.hotchemi:permissionsdispatcher:2.4.0"
    kapt "com.github.hotchemi:permissionsdispatcher-processor:2.4.0"
    //Picasso
    compile "com.squareup.picasso:picasso:2.5.2"
    // Support
    implementation "com.android.support:appcompat-v7:26.1.0"
    implementation "com.android.support:support-v13:26.1.0"
    implementation "com.android.support:design:26.1.0"
    implementation "com.android.support:customtabs:26.1.0"
    implementation "com.android.support:cardview-v7:26.1.0"
    implementation "com.android.support:support-v4:26.1.0"
    // Retrofit 2
    implementation "com.squareup.retrofit2:retrofit:2.3.0"
    implementation "com.squareup.retrofit2:converter-gson:2.3.0"
    implementation "com.squareup.okhttp3:okhttp:3.8.1"
    implementation "com.squareup.okhttp3:logging-interceptor:3.8.1"
    implementation "com.squareup.retrofit2:adapter-rxjava2:2.3.0"

}


