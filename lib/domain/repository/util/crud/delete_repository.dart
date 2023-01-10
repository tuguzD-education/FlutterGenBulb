import '../../../model/util/id.dart';
import '../../../model/util/node.dart';
import '../../../util/result.dart';

abstract class DeleteRepository<T extends Node> {
  Future<DomainResult<T>> delete({required Id<T> id});
}
