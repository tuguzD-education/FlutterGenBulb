import 'package:dartz/dartz.dart' as dartz;

import '../../../model/util/node.dart';
import '../../../util/result.dart';

abstract class SearchRepository<T extends Node> {
  Future<DomainResult<dartz.IList<T>>> search({
    required String input,
  });
}
