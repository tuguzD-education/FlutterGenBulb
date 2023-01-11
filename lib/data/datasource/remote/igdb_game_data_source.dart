import 'package:dartz/dartz.dart' as dartz;
import 'package:dio/dio.dart' as dio;
import 'package:fluttergenbulb/data/model/remote/igdb_genre.dart';
import 'package:fluttergenbulb/data/model/remote/igdb_mode.dart';

import '../../../domain/model/genre.dart';
import '../../../domain/model/mode.dart';
import '../../../domain/model/util/id.dart';
import '../../model/remote/igdb_game.dart';
import 'utils.dart';
import '../../../domain/model/game.dart';
import '../../../domain/util/error.dart';
import '../../../domain/util/result.dart';
import 'igdb_api_client.dart';

class IgdbGameDataSource {
  static const String query =
      "fields name, summary, game_modes.name, genres.name; " +
          "where (rating != 0 | aggregated_rating != 0) & game_modes != null " +
          "& genres != null; sort id desc;";

  final IgdbApiClient client;

  IgdbGameDataSource({required this.client});

  Future<DomainResult<dartz.IList<Game>>> readAll({
    int page = 0, int limit = 20,
  }) async {
    try {
      final response = await client.dioClient.post(
        "games", data: "$query limit $limit; offset ${page * limit};",
      );
      final result = response.toDomainResult();
      if (result.isLeft()) {
        final error = result.asLeft();
        return dartz.left(error);
      }
      final igdbGames = (result.asRight() as List)
          .map((json) => IgdbGame.fromJson(json))
          .map((game) => toGameDomain(game));
      final games = dartz.IList.from(igdbGames);
      return dartz.right(games);
    } on dio.DioError catch (e) {
      return dartz.left(e.toDomainError());
    } catch (e) {
      return dartz.left(UnknownError(message: "$e"));
    }
  }

  Game toGameDomain(IgdbGame game) {
    return Game(
        id: Id(id: game.id.toString()),
        name: game.name,
        summary: game.summary,
        gameModes: dartz.IList.from(
            game.gameModes.map((mode) => toModeDomain(mode))
        ),
        genres: dartz.IList.from(
            game.genres.map((genre) => toGenreDomain(genre))
        ),
    );
  }

  Genre toGenreDomain(IgdbGenre genre) {
    return Genre(
      id: Id(id: genre.id.toString()),
      name: genre.name,
    );
  }

  Mode toModeDomain(IgdbMode mode) {
    return Mode(
      id: Id(id: mode.id.toString()),
      name: mode.name,
    );
  }
}
