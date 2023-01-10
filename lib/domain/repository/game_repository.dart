import '../model/game.dart';
import 'util/business/read_all_repository.dart';
import 'util/business/search_repository.dart';
import 'util/crud/read_repository.dart';
import 'util/crud/save_repository.dart';

abstract class GameRepository implements
    SaveRepository<Game>, ReadRepository<Game>,
    SearchRepository<Game>, ReadAllRepository<Game> { }
