package ${packageName}.buissness.common

import io.reactivex.Single

/**
 * Created by roix on 26.12.2017.
 */
interface IBaseListInteractor<Item> {
    fun loadItems(page: Int): Single<List<Item>>
}
