import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

import '../error/exceptions.dart';

/// A generic use case interface for executing business logic.
///
/// [Type] is the success response type.
/// [Params] is the input parameters type.
abstract class UseCase<Type, Params> {
  Future<Either<AppException, Type>> call(Params params);
}

/// A class for use cases that do not require any parameters.
class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}
