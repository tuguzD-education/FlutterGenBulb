import '../data/datasource/remote/igdb_api_client.dart';
import '../data/datasource/remote/igdb_game_data_source.dart';
import '../data/repository/game_repository_impl.dart';
import '../domain/repository/game_repository.dart';
import 'package:get_it/get_it.dart';

import '../domain/usecase/content/game/read_all_game_use_case.dart';
import 'game/bloc.dart';

void init() {
  GetIt.instance.registerSingleton(IgdbApiClient());

  GetIt.instance.registerFactory(
          () => IgdbGameDataSource(client: GetIt.instance<IgdbApiClient>()));

  GetIt.instance.registerFactory<GameRepository>(() =>
      GameRepositoryImpl(
        remoteDataSource: GetIt.instance<IgdbGameDataSource>(),
      ));

  GetIt.instance.registerFactory(() =>
      ReadAllGameUseCase(GetIt.instance<GameRepository>()));

  GetIt.instance.registerFactory(() =>
      GameBloc(useCase: GetIt.instance<ReadAllGameUseCase>()));
}
