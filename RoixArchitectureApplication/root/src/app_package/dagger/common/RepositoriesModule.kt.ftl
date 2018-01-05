package ${packageName}.dagger.common

import ${packageName}.data.repositories.server.IServerRepository
import ${packageName}.data.repositories.server.ServerRepository
import dagger.Module
import dagger.Provides
import javax.inject.Singleton

/**
 * Created by roix on 28.11.2017.
 */
@Module
@Singleton
class RepositoriesModule {

    @Provides fun provideServerRepository(serverApi: ServerApi): IServerRepository = ServerRepository(serverApi)

}
