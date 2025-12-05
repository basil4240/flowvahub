import 'package:dartz/dartz.dart';
import 'package:flowvahub/core/error/exceptions.dart';
import 'package:flowvahub/features/auth/domain/entities/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<AppException, AuthEntity>> signUp({
    required String email,
    required String password,
  });

  Future<Either<AppException, AuthEntity>> login({
    required String email,
    required String password,
  });

  Future<Either<AppException, void>> forgotPassword({
    required String email,
  });

  Future<Either<AppException, void>> sendEmailVerification({
    required String email,
  });
}