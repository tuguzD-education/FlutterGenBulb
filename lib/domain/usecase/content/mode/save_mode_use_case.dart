import '../../../model/mode.dart';
import '../../../repository/mode_repository.dart';
import '../../util/crud/save_use_case.dart';

class SaveModeUseCase extends SaveUseCase<Mode> {
  const SaveModeUseCase(
    ModeRepository repository,
  ) : super(repository);
}
