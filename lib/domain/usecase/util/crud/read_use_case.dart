import '../../../repository/util/crud/read_repository.dart';
import '../../../model/util/id.dart';
import '../../../model/util/node.dart';
import '../../../util/result.dart';

class ReadUseCase<T extends Node> {
  final ReadRepository<T> _repository;

  const ReadUseCase(this._repository);

  Future<DomainResult<T?>> read({required Id<T> id}) async =>
      await _repository.read(id: id);
}
