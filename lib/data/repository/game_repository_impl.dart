import 'package:dartz/dartz.dart' as dartz;

import '../../domain/model/game.dart';
import '../../domain/repository/game_repository.dart';
import '../../domain/util/result.dart';
import '../datasource/remote/igdb_game_data_source.dart';

class GameRepositoryImpl implements GameRepository {
  final IgdbGameDataSource remoteDataSource;

  const GameRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<DomainResult<dartz.IList<Game>>> readAll({
    required int page,
  }) async {
    return remoteDataSource.readAll();
  }
}
