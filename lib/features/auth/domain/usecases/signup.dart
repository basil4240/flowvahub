import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flowvahub/core/error/exceptions.dart';
import 'package:flowvahub/core/usecase/usecase.dart';
import 'package:flowvahub/features/auth/domain/entities/auth_entity.dart';
import 'package:flowvahub/features/auth/domain/repositories/auth_repository.dart';

class SignUp implements UseCase<AuthEntity, SignUpParams> {
  final AuthRepository repository;

  SignUp(this.repository);

  @override
  Future<Either<AppException, AuthEntity>> call(SignUpParams params) async {
    return await repository.signUp(email: params.email, password: params.password);
  }
}

class SignUpParams extends Equatable {
  final String email;
  final String password;

  const SignUpParams({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}
