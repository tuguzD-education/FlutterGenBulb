import '../../../model/game.dart';
import '../../../repository/game_repository.dart';
import '../../util/business/search_use_case.dart';

class SearchGameUseCase extends SearchUseCase<Game> {
  const SearchGameUseCase(
    GameRepository repository,
  ) : super(repository);
}
