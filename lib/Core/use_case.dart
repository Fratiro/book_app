import 'package:dartz/dartz.dart';

import 'Errors/failures.dart';

abstract class UseCase<Type, Param> {
  Future<Either<Failure, Type>> call([Param param]);
}

class NoParam {}