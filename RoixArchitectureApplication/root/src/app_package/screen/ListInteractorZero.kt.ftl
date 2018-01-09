package ${packageName}.buissness.${screenPackage}

import ${packageName}.data.models.${itemName}Item
import io.reactivex.Single

/**
 * Created by roix on 06.01.2018.
 */
class ${screenName}Interactor: I${screenName}Interactor {

    @Inject constructor()

    override fun loadItems(page: Int): Single<List<${itemName}Item>> = Single.never()


}
