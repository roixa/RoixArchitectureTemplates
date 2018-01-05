<layout>

    <data>

        <variable
            name="icon"
            type="android.graphics.drawable.Drawable"/>
    </data>

    <ImageButton xmlns:android="http://schemas.android.com/apk/res/android"
        xmlns:tools="http://schemas.android.com/tools"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:padding="@dimen/micro"
        android:background="@android:color/transparent"
        android:src="@{icon}"
        tools:ignore="ContentDescription"/>

</layout>
