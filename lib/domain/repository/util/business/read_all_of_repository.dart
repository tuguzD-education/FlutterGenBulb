import 'package:dartz/dartz.dart' as dartz;

import '../../../model/util/id.dart';
import '../../../model/util/node.dart';
import '../../../util/result.dart';

abstract class ReadAllOfRepository<T extends Node, L extends Node> {
  Future<DomainResult<dartz.IList<L>>> readAllOf({
    required int page,
    required Id<T> item,
  });
}
