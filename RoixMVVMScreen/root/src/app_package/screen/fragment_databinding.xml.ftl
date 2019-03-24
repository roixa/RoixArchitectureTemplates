<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:bind="http://schemas.android.com/tools">

    <data>

        <#if addScreenToFeature>

        <variable
            name="viewmodel"
            type="${packageName}.ui.${existingFeaturePackage}.viewmodels.${existingFeatureName}ViewModel" />

            <#else>

        <variable
            name="viewmodel"
            type="${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel" />

        </#if>

    </data>

    <androidx.constraintlayout.widget.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">


    </androidx.constraintlayout.widget.ConstraintLayout>

</layout>
