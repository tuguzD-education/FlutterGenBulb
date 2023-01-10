import '../../../model/util/node.dart';
import '../../../util/result.dart';

abstract class SaveRepository<T extends Node> {
  Future<DomainResult<T>> save({required T item});
}
