package ${packageName}.ui.common.view

import android.content.Context
import androidx.annotation.DrawableRes
import androidx.core.content.ContextCompat
import androidx.lifecycle.MutableLiveData
import ${packageName}.R

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
class ToolbarType(val context: Context,
                  visible: Boolean = true,
                  @DrawableRes icon: Int = R.drawable.ic_back,
                  title: String = "",
                  subtitle: String = "",
                  val elevation: Int = ContextCompat.getColor(context, android.R.color.white),
                  val backgroundColor: Int = ContextCompat.getColor(context, R.color.colorPrimary),
                  val iconColor: Int = ContextCompat.getColor(context, android.R.color.white),
                  val titleColor: Int = ContextCompat.getColor(context, android.R.color.white),
                  val subtitleColor: Int = ContextCompat.getColor(context, android.R.color.white)
) {

    val visible: MutableLiveData<Boolean> = MutableLiveData()
    val icon: MutableLiveData<Int> = MutableLiveData()
    val title: MutableLiveData<String> = MutableLiveData()
    val subtitle: MutableLiveData<String> = MutableLiveData()

    fun isIconVisible(): Boolean {
        return R.drawable.none != icon.value
    }

    init {
        this.visible.value = visible
        this.icon.value = icon
        this.title.value = title
        this.subtitle.value = subtitle
    }
}
