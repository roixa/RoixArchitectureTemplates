<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:bind="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">

    <data>

        <variable
            name="toolbarType"
            type="com.roix.mvvm_archtecture_sample.ui.common.view.ToolbarType" />
    </data>

    <android.support.v7.widget.Toolbar
        android:id="@+id/tb"
        android:layout_width="match_parent"
        android:layout_height="?attr/actionBarSize"
        android:background="@{toolbarType.backgroundColor}"
        android:visibility="@{toolbarType.visible}"
        app:contentInsetEnd="0dp"
        app:contentInsetStart="0dp"
        app:elevation="@{toolbarType.elevation}"
        app:layout_collapseMode="pin"
        app:theme="@style/Toolbar"
        app:popupTheme="@style/ThemeOverlay.AppCompat.Dark">

        <RelativeLayout
            android:layout_width="match_parent"
            android:layout_height="match_parent"
            android:visibility="visible">

            <TextView
                android:id="@+id/tv_title"
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:layout_centerVertical="true"
                android:layout_marginEnd="@dimen/epic"
                android:layout_marginStart="@dimen/epic"
                android:background="@android:color/transparent"
                android:ellipsize="end"
                android:gravity="center"
                android:maxLines="1"
                android:text="@{toolbarType.getTitle()}"
                android:textColor="@{toolbarType.titleColor}"
                android:textSize="@dimen/medium_text"
                tools:ignore="ContentDescription"
                tools:text="Title" />

            <TextView
                android:layout_width="match_parent"
                android:layout_height="wrap_content"
                android:layout_below="@id/tv_title"
                android:layout_centerVertical="true"
                android:layout_marginEnd="@dimen/epic"
                android:layout_marginStart="@dimen/epic"
                android:background="@android:color/transparent"
                android:ellipsize="end"
                android:gravity="center"
                android:maxLines="1"
                android:text="@{toolbarType.subtitle}"
                tools:ignore="ContentDescription"
                tools:text="Subtitle" />

            <LinearLayout
                android:id="@+id/ll_items"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:layout_alignParentRight="true"
                android:layout_centerVertical="true"
                android:layout_marginRight="@dimen/low"
                android:gravity="center"
                android:orientation="horizontal"
                tools:ignore="RtlHardcoded" />

            <ImageButton
                android:id="@+id/navigation_tb"
                android:layout_width="@dimen/medium_icon_size"
                android:layout_height="@dimen/medium_icon_size"
                android:layout_centerVertical="true"
                android:layout_marginLeft="@dimen/milli"
                android:background="@android:color/transparent"
                android:gravity="center_vertical"
                android:padding="@dimen/milli"
                android:visibility="@{toolbarType.isIconVisible()}"
                bind:srcVector="@{toolbarType.getIcon()}"
                bind:tintColor="@{toolbarType.iconColor}"
                tools:ignore="ContentDescription,RtlHardcoded" />

        </RelativeLayout>

    </android.support.v7.widget.Toolbar>

</layout>
