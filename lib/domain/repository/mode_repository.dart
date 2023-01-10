import '../model/game.dart';
import '../model/mode.dart';
import 'util/business/read_all_of_repository.dart';
import 'util/business/search_repository.dart';
import 'util/crud/read_repository.dart';
import 'util/crud/save_repository.dart';

abstract class ModeRepository implements
    SaveRepository<Mode>, ReadRepository<Mode>,
    SearchRepository<Mode>, ReadAllOfRepository<Game, Mode> { }
