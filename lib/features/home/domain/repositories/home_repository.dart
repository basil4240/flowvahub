import 'package:dartz/dartz.dart';
import 'package:flowvahub/core/error/exceptions.dart'; // Correct import for AppException
import 'package:flowvahub/features/auth/domain/entities/user_entity.dart'; // Reusing UserEntity

abstract class HomeRepository {
  Future<Either<AppException, UserEntity>> getUserDetails(); // Corrected to AppException
}