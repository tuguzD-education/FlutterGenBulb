import '../../../model/util/id.dart';
import '../../../repository/util/crud/delete_repository.dart';
import '../../../model/util/node.dart';
import '../../../util/result.dart';

class DeleteUseCase<T extends Node> {
  final DeleteRepository<T> _repository;

  const DeleteUseCase(this._repository);

  Future<DomainResult<T>> delete({required Id<T> id}) async =>
      await _repository.delete(id: id);
}
