import '../../../model/mode.dart';
import '../../../repository/mode_repository.dart';
import '../../util/crud/read_use_case.dart';

class GetModeUseCase extends ReadUseCase<Mode> {
  const GetModeUseCase(
    ModeRepository repository,
  ) : super(repository);
}
