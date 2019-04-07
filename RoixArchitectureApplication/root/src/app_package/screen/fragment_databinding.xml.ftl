<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:bind="http://schemas.android.com/tools">

    <data>

        <#if addToolbar>

        <variable
            name="toolbarType"
            type="${packageName}.ui.common.view.ToolbarType" />

        </#if>

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

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">

        <#if addToolbar>
            
        <include
            android:id="@+id/toolbar"
            layout="@layout/toolbar"
            bind:toolbarType="@{toolbarType}" />

        </#if>


        <#if addList>
            
        <androidx.swiperefreshlayout.widget.SwipeRefreshLayout
            android:id="@+id/srl"
            android:layout_width="match_parent"
            android:layout_height="0dp"
            android:layout_weight="1"
            android:layout_margin="@dimen/micro"
            bind:refreshing="@{viewmodel.loadingLiveData}">

            <androidx.recyclerview.widget.RecyclerView
                android:id="@+id/rv"
                android:layout_width="match_parent"
                android:layout_height="match_parent" />

        </androidx.swiperefreshlayout.widget.SwipeRefreshLayout>

        </#if>

    </LinearLayout>

</layout>
