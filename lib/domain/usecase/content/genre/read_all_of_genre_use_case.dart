import '../../../model/game.dart';
import '../../../model/genre.dart';
import '../../../repository/genre_repository.dart';
import '../../util/business/read_all_of_use_case.dart';

class ReadAllOfGenreUseCase extends ReadAllOfUseCase<Game, Genre> {
  const ReadAllOfGenreUseCase(
    GenreRepository repository,
  ) : super(repository);
}
