import '../model/game.dart';
import '../model/genre.dart';
import 'util/business/read_all_of_repository.dart';
import 'util/business/search_repository.dart';
import 'util/crud/read_repository.dart';
import 'util/crud/save_repository.dart';

abstract class GenreRepository implements
    SaveRepository<Genre>, ReadRepository<Genre>,
    SearchRepository<Genre>, ReadAllOfRepository<Game, Genre> { }
