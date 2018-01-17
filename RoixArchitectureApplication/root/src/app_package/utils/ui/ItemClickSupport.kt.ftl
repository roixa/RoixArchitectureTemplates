package ${packageName}.utils.ui

import android.support.annotation.IdRes
import android.support.v7.widget.RecyclerView
import android.view.View
import ${packageName}.R
import java.util.*

/**
 * Created by roix template
 * https://github.com/roixa/RoixArchitectureTemplates
 */

class ItemClickSupport private constructor(private val mRecyclerView: RecyclerView) {
    private val mListeners = ArrayList<MyOnChildAttachStateChangeListener>()

    init {

        mRecyclerView.setTag(R.id.item_click_support, this)
    }

    fun setOnItemClickListener(itemClickListener: OnItemClickListener): ItemClickSupport {
        var itemListener: MyOnChildAttachStateChangeListener? = null
        for (listener in mListeners) {
            if (listener.isItemClickListener) {
                itemListener = listener
            }
        }
        if (null == itemListener) {
            itemListener = MyOnChildAttachStateChangeListener(null, mRecyclerView)
            mRecyclerView.addOnChildAttachStateChangeListener(itemListener)
            mListeners.add(itemListener)
        }

        itemListener.setOnItemClickListener(itemClickListener)

        return this
    }

    fun setOnItemClickListener(function: ((RecyclerView), (Int), (View)) -> Unit):
            ItemClickSupport {
        setOnItemClickListener(object : OnItemClickListener {
            override fun onItemClicked(recyclerView: RecyclerView, position: Int, view: View) {
                function.invoke(recyclerView, position, view)
            }
        })
        return this
    }


    fun setOnItemLongClickListener(itemLongClickListener: OnItemLongClickListener): ItemClickSupport {
        var itemListener: MyOnChildAttachStateChangeListener? = null
        for (listener in mListeners) {
            if (listener.isItemClickListener) {
                itemListener = listener
            }
        }
        if (null == itemListener) {
            itemListener = MyOnChildAttachStateChangeListener(null, mRecyclerView)
            mRecyclerView.addOnChildAttachStateChangeListener(itemListener)
            mListeners.add(itemListener)
        }

        itemListener.setOnItemLongClickListener(itemLongClickListener)

        return this
    }

    fun setOnItemLongClickListener(function: ((RecyclerView), (Int), (View)) -> Boolean):
            ItemClickSupport {
        setOnItemLongClickListener(object : OnItemLongClickListener {

            override fun onItemLongClicked(recyclerView: RecyclerView, position: Int, view: View)
                    : Boolean {
                return function.invoke(recyclerView, position, view)
            }
        })
        return this
    }


    fun setOnChildClickListener(@IdRes viewResId: Int, onChildClickListener: OnChildClickListener): ItemClickSupport {
        val listener = MyOnChildAttachStateChangeListener(viewResId, mRecyclerView)
        mRecyclerView.addOnChildAttachStateChangeListener(listener)
        mListeners.add(listener)
        listener.setOnChildClickListener(onChildClickListener)
        return this
    }

    fun setOnChildClickListener(@IdRes viewResId: Int, function: ((RecyclerView), (Int), (View)) -> Boolean):
            ItemClickSupport {
        setOnChildClickListener(viewResId, object : OnChildClickListener {
            override fun onChildClicked(recyclerView: RecyclerView, position: Int, view: View) {
                function.invoke(recyclerView, position, view)
            }
        })
        return this
    }


    private fun detach(recyclerView: RecyclerView) {
        for (listener in mListeners) {
            recyclerView.removeOnChildAttachStateChangeListener(listener)
        }
        mListeners.clear()
        recyclerView.setTag(R.id.item_click_support, null)
    }

    interface OnItemClickListener {

        fun onItemClicked(recyclerView: RecyclerView, position: Int, view: View)
    }

    interface OnItemLongClickListener {

        fun onItemLongClicked(recyclerView: RecyclerView, position: Int, view: View): Boolean
    }

    interface OnChildClickListener {

        fun onChildClicked(recyclerView: RecyclerView, position: Int, view: View)
    }

    private class MyOnChildAttachStateChangeListener internal constructor(@param:IdRes @field:IdRes
                                                                          private val mViewResId: Int?, private val mRecyclerView: RecyclerView) : RecyclerView.OnChildAttachStateChangeListener {

        private var mOnItemClickListener: OnItemClickListener? = null
        private val mOnClickListener = View.OnClickListener { v ->
            if (null != mOnItemClickListener) {
                val holder = mRecyclerView.getChildViewHolder(v)
                mOnItemClickListener!!.onItemClicked(mRecyclerView, holder.adapterPosition, v)
            }
        }
        private var mOnItemLongClickListener: OnItemLongClickListener? = null
        private val mOnLongClickListener = View.OnLongClickListener { v ->
            if (null != mOnItemLongClickListener) {
                val holder = mRecyclerView.getChildViewHolder(v)
                return@OnLongClickListener mOnItemLongClickListener!!.onItemLongClicked(mRecyclerView, holder.adapterPosition, v)
            }
            false
        }
        private var mOnChildClickListener: OnChildClickListener? = null

        val isItemClickListener: Boolean
            get() = null == mViewResId

        override fun onChildViewAttachedToWindow(view: View) {
            if (null == mViewResId) {
                view.setOnClickListener(mOnClickListener)
                view.setOnLongClickListener(mOnLongClickListener)
            } else {
                val child = view.findViewById<View>(mViewResId)
                child?.setOnClickListener { v ->
                    if (null != mOnChildClickListener) {
                        val holder = mRecyclerView.getChildViewHolder(view)
                        mOnChildClickListener!!.onChildClicked(mRecyclerView, holder.adapterPosition, child)
                    }
                }
            }
        }

        override fun onChildViewDetachedFromWindow(view: View) {
            //pass it
        }

        fun setOnItemClickListener(listener: OnItemClickListener) {
            mOnItemClickListener = listener
        }

        fun setOnItemLongClickListener(listener: OnItemLongClickListener) {
            mOnItemLongClickListener = listener
        }

        fun setOnChildClickListener(onChildClickListener: OnChildClickListener) {
            mOnChildClickListener = onChildClickListener
        }
    }

    companion object {

        fun addTo(recyclerView: RecyclerView): ItemClickSupport {
            var support  = recyclerView.getTag(R.id.item_click_support)
            if (null == support) {
                support = ItemClickSupport(recyclerView)
            }
            return support as ItemClickSupport
        }

        fun removeFrom(recyclerView: RecyclerView): ItemClickSupport? {
            val support = recyclerView.getTag(R.id.item_click_support) as ItemClickSupport
            support?.detach(recyclerView)
            return support
        }
    }
}
