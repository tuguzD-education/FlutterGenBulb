import 'package:dartz/dartz.dart' as dartz;

import '../../../model/util/node.dart';
import '../../../util/result.dart';

abstract class ReadAllRepository<T extends Node> {
  Future<DomainResult<dartz.IList<T>>> readAll({
    required int page,
  });
}
