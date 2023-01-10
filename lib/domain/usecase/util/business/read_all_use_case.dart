import 'package:dartz/dartz.dart' as dartz;

import '../../../model/util/node.dart';
import '../../../repository/util/business/read_all_repository.dart';
import '../../../util/result.dart';

class ReadAllUseCase<T extends Node> {
  final ReadAllRepository<T> _repository;

  const ReadAllUseCase(this._repository);

  Future<DomainResult<dartz.IList<T>>> readAll({
    required int page,
  }) async =>
      await _repository.readAll(page: page);
}
