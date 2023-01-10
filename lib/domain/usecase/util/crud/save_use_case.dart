import '../../../model/util/node.dart';
import '../../../repository/util/crud/save_repository.dart';
import '../../../util/result.dart';

class SaveUseCase<T extends Node> {
  final SaveRepository<T> _repository;

  const SaveUseCase(this._repository);

  Future<DomainResult<T>> save({required T item}) async =>
      await _repository.save(item: item);
}
