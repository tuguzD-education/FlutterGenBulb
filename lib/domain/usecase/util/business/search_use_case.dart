import 'package:dartz/dartz.dart' as dartz;

import '../../../repository/util/business/search_repository.dart';
import '../../../model/util/node.dart';
import '../../../util/result.dart';

class SearchUseCase<T extends Node> {
  final SearchRepository<T> _repository;

  const SearchUseCase(this._repository);

  Future<DomainResult<dartz.IList<T>>> search({
    required String input,
  }) async =>
      await _repository.search(input: input);
}
