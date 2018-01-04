<manifest xmlns:android="http://schemas.android.com/apk/res/android" >
    
<uses-permission android:name="android.permission.INTERNET" />

    <application
        android:name="${srcApp}.${appName}"
        android:allowBackup="true"
        android:supportsRtl="true">
        <activity android:name="${srcScreenPackage}.view.${screenName}Activity" />


    </application>

</manifest>