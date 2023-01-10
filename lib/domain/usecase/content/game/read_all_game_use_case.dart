import '../../../model/game.dart';
import '../../../repository/game_repository.dart';
import '../../util/business/read_all_use_case.dart';

class ReadAllGameUseCase extends ReadAllUseCase<Game> {
  const ReadAllGameUseCase(
    GameRepository repository,
  ) : super(repository);
}
