import '../../../model/util/id.dart';
import '../../../model/util/node.dart';
import '../../../util/result.dart';

abstract class ReadRepository<T extends Node> {
  Future<DomainResult<T?>> read({required Id<T> id});
}
