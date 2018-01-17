<manifest xmlns:android="http://schemas.android.com/apk/res/android" >
    
<uses-permission android:name="android.permission.INTERNET" />

    <application
        android:name="${srcApp}.${appName}"
        android:allowBackup="true"
        android:supportsRtl="true">
        <activity android:name=".ui.${screenPackage}.views.${screenName}Activity" >
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />

                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>


    </application>

</manifest>