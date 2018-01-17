package ${packageName}.utils.binding

import android.databinding.BindingAdapter
import android.databinding.BindingConversion
import android.support.annotation.ColorRes
import android.support.annotation.DrawableRes
import android.support.v4.content.ContextCompat
import android.support.v4.widget.SwipeRefreshLayout
import android.view.View
import android.widget.ImageView
import ${packageName}.ui.common.viewmodels.BaseListViewModel
import com.squareup.picasso.Picasso

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
@BindingConversion
fun convertBooleanToVisibility(visible: Boolean): Int {
    return if (visible) View.VISIBLE else View.GONE
}

@BindingAdapter("bind:srcVector")
fun setSrcVector(imageView: ImageView, @DrawableRes res: Int) {
    imageView.setImageResource(res)
}

@BindingAdapter("bind:imageUrl")
fun setImageUrl(imageView: ImageView, url: String) {
    Picasso.with(imageView.context).load(url).into(imageView)
}

@BindingAdapter("bind:refreshing")
fun setSrcCompatRefreshing(layout: SwipeRefreshLayout, state: BaseListViewModel.StateList) {
    layout.isRefreshing = state == BaseListViewModel.StateList.REFRESH
}


@BindingAdapter("bind:tint")
fun setTint(view: ImageView, @ColorRes colorRes: Int) {
    view.setColorFilter(ContextCompat.getColor(view.context, colorRes))
}

@BindingAdapter("bind:tintColor")
fun setTintColor(view: ImageView, color: Int) {
    view.setColorFilter(color)
}

