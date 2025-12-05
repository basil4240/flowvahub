import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flowvahub/core/error/exceptions.dart';
import 'package:flowvahub/core/usecase/usecase.dart';
import 'package:flowvahub/features/auth/domain/repositories/auth_repository.dart';

class ForgotPassword implements UseCase<void, ForgotPasswordParams> {
  final AuthRepository repository;

  ForgotPassword(this.repository);

  @override
  Future<Either<AppException, void>> call(ForgotPasswordParams params) async {
    return await repository.forgotPassword(email: params.email);
  }
}

class ForgotPasswordParams extends Equatable {
  final String email;

  const ForgotPasswordParams({required this.email});

  @override
  List<Object?> get props => [email];
}
