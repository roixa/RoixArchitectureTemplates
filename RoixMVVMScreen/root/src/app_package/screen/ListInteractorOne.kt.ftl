package ${packageName}.buissness.${screenPackage}

import ${packageName}.data.repositories.${repositoryPackage}.I${repositoryName}Repository
import ${packageName}.data.repositories.${repositoryPackage}.${repositoryName}Repository
import javax.inject.Inject
import ${packageName}.data.models.${itemName}Item
import io.reactivex.Single

/**
 * Created by roix on 06.01.2018.
 */
class ${screenName}Interactor: I${screenName}Interactor {

    @Inject constructor()

    @Inject lateinit var  ${repositoryPackage}Repository: ${repositoryName}Repository

    override fun loadItems(page: Int): Single<List<${itemName}Item>> = Single.never()


}
