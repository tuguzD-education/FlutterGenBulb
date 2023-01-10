import '../../../repository/genre_repository.dart';
import '../../../model/genre.dart';
import '../../util/crud/read_use_case.dart';

class GetGenreUseCase extends ReadUseCase<Genre> {
  const GetGenreUseCase(
    GenreRepository repository,
  ) : super(repository);
}
