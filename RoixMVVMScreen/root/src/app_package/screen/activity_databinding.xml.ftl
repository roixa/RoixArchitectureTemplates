<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:bind="http://schemas.android.com/tools">

    <data>

        <variable
            name="toolbarType"
            type="${packageName}.ui.common.view.ToolbarType" />


        <variable
            name="viewmodel"
            type="${packageName}.ui.${screenPackage}.viewmodels.${screenName}ViewModel" />
        <import type="${packageName}.ui.common.viewmodels.BaseListViewModel.StateList"></import>

    </data>

    <android.support.constraint.ConstraintLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical">


        <include
            android:id="@+id/toolbar"
            layout="@layout/toolbar"
            bind:toolbarType="@{toolbarType}" />

    </android.support.constraint.ConstraintLayout>

</layout>
