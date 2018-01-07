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

        <ProgressBar
            android:id="@+id/pb_empty_list"
            android:visibility="@{viewmodel.stateList.equals(StateList.EMPTY_PROGRESS)}"
            style="?android:attr/progressBarStyle"
            android:layout_width="0dp"
            android:layout_height="0dp"
            app:layout_constraintBottom_toBottomOf="parent"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toBottomOf="@id/toolbar" />

        <ProgressBar
            android:id="@+id/pb_pagination"
            style="?android:attr/progressBarStyle"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:visibility="@{viewmodel.stateList.equals(StateList.PAGE_PROGRESS)}"
            app:layout_constraintBottom_toBottomOf="parent"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent" />

        <android.support.v4.widget.SwipeRefreshLayout
            android:id="@+id/srl"
            android:layout_width="match_parent"
            android:layout_height="0dp"
            app:layout_constraintBottom_toTopOf="@+id/pb_pagination"
            app:layout_constraintEnd_toEndOf="parent"
            app:layout_constraintStart_toStartOf="parent"
            app:layout_constraintTop_toBottomOf="@+id/toolbar"
            bind:refreshing="@{viewmodel.stateList}">

            <android.support.v7.widget.RecyclerView
                android:id="@+id/rv"
                android:layout_width="match_parent"
                android:layout_height="match_parent" />
        </android.support.v4.widget.SwipeRefreshLayout>

    </android.support.constraint.ConstraintLayout>

</layout>
