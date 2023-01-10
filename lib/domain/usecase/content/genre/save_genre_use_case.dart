import '../../../model/genre.dart';
import '../../../repository/genre_repository.dart';
import '../../util/crud/save_use_case.dart';

class SaveGenreUseCase extends SaveUseCase<Genre> {
  const SaveGenreUseCase(
    GenreRepository repository,
  ) : super(repository);
}
