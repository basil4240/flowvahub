import 'package:dartz/dartz.dart';
import 'package:flowvahub/core/error/exceptions.dart'; // Correct import for AppException
import 'package:flowvahub/core/usecase/usecase.dart';
import 'package:flowvahub/features/auth/domain/entities/user_entity.dart';
import 'package:flowvahub/features/home/domain/repositories/home_repository.dart';

class GetUserDetails implements UseCase<UserEntity, NoParams> {
  final HomeRepository repository;

  GetUserDetails(this.repository);

  @override
  Future<Either<AppException, UserEntity>> call(NoParams params) async {
    return await repository.getUserDetails();
  }
}