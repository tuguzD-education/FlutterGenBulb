import 'package:dartz/dartz.dart' as dartz;

import 'error.dart';

typedef Result<T, E> = dartz.Either<E, T>;

typedef DomainResult<T> = Result<T, DomainError>;

extension EitherExt<L, R> on dartz.Either<L, R> {
  R asRight() => (this as dartz.Right).value;

  L asLeft() => (this as dartz.Left).value;
}
