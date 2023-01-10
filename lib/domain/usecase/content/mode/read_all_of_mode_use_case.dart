import '../../../model/mode.dart';
import '../../../model/game.dart';
import '../../../repository/mode_repository.dart';
import '../../util/business/read_all_of_use_case.dart';

class ReadAllOfModeUseCase extends ReadAllOfUseCase<Game, Mode> {
  const ReadAllOfModeUseCase(
    ModeRepository repository,
  ) : super(repository);
}
