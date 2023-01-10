import 'package:dartz/dartz.dart' as dartz;

import '../../../repository/util/business/read_all_of_repository.dart';
import '../../../model/util/id.dart';
import '../../../model/util/node.dart';
import '../../../util/result.dart';

class ReadAllOfUseCase<T extends Node, L extends Node> {
  final ReadAllOfRepository<T, L> _repository;

  const ReadAllOfUseCase(this._repository);

  Future<DomainResult<dartz.IList<L>>> readAllOf({
    required int page,
    required Id<T> item,
  }) async =>
      await _repository.readAllOf(page: page, item: item);
}
