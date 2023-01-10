import '../../model/util/node.dart';
import 'crud/delete_repository.dart';
import 'crud/read_repository.dart';
import 'crud/save_repository.dart';

abstract class CrudRepository<T extends Node>
    implements SaveRepository<T>, ReadRepository<T>, DeleteRepository<T> {}
