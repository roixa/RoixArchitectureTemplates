package ${packageName}.ui.common.view

import android.annotation.SuppressLint
import android.content.Context
import android.support.annotation.DrawableRes
import android.support.v4.content.ContextCompat
import ${packageName}.R

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */
data class ToolbarType(val visible: Boolean,
                       @DrawableRes val icon: Int,
                       val title: String,
                       val subtitle: String,
                       val elevation: Int,
                       val backgroundColor: Int,
                       val iconColor: Int,
                       val titleColor: Int,
                       val subtitleColor: Int
) {
    fun isIconVisible(): Boolean {
        return R.drawable.none !== icon
    }


    class Builder(val context: Context) {
        var visible: Boolean = false
        @DrawableRes
        private var icon = R.drawable.none
        private var title = ""
        private var backgroundColor: Int = ContextCompat.getColor(context, R.color.colorPrimary)
        private var titleColor: Int = ContextCompat.getColor(context, android.R.color.white)
        private var iconColor: Int = ContextCompat.getColor(context, android.R.color.white)
        private var elevation: Int = ContextCompat.getColor(context, android.R.color.white)
        private var subtitle = ""
        private var subtitleColor: Int = ContextCompat.getColor(context, android.R.color.white)

        fun default():ToolbarType.Builder{
            return this
                    .setTitle(context.getString(R.string.app_name))
                    .setVisible()
                    .setBackIcon()
                    .setDefaultElevation()
        }

        fun setVisible(): Builder {
            this.visible = true
            return this
        }

        fun setBackIcon(): Builder {
            this.icon = R.drawable.ic_back
            return this
        }

        fun setNavigationIcon(): Builder {
            this.icon = R.drawable.ic_navigation_menu
            return this
        }

        fun setTitle(title: String): Builder {
            this.title = title
            return this
        }


        fun setDefaultElevation(): Builder {
            this.elevation = context.resources
                    .getDimensionPixelSize(R.dimen.nano)
            return this
        }

        fun setSubtitle(subtitle: String): Builder {
            this.subtitle = subtitle
            return this
        }

        fun setSubtitleColor(subtitleColor: Int): Builder {
            this.subtitleColor = subtitleColor
            return this
        }

        @SuppressLint("ResourceAsColor")
        fun setBackgroundColor(id: Int): Builder {
            backgroundColor = ContextCompat.getColor(context, id)
            return this
        }


        fun build(): ToolbarType {
            return ToolbarType(visible, icon, title, subtitle, elevation, backgroundColor, iconColor, titleColor, subtitleColor)
        }


    }
}
