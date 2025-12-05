import 'package:dartz/dartz.dart';
import 'package:flowvahub/core/error/exceptions.dart';
// import 'package:flowvahub/core/error/failures.dart'; // REMOVED
import 'package:flowvahub/features/auth/domain/entities/app_metadata_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/identity_data_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/identity_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/user_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/user_metadata_entity.dart';
import 'package:flowvahub/features/home/data/datasources/home_remote_data_source.dart';
import 'package:flowvahub/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl implements HomeRepository {
  final HomeRemoteDataSource remoteDataSource;

  HomeRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<AppException, UserEntity>> getUserDetails() async {
    try {
      final userModel = await remoteDataSource.getUserDetails();

      // Map UserModel to UserEntity
      final userEntity = UserEntity(
        id: userModel.id,
        aud: userModel.aud,
        role: userModel.role,
        email: userModel.email,
        emailConfirmedAt: userModel.emailConfirmedAt,
        phone: userModel.phone,
        confirmationSentAt: userModel.confirmationSentAt,
        confirmedAt: userModel.confirmedAt,
        lastSignInAt: userModel.lastSignInAt,
        appMetadata: userModel.appMetadata != null
            ? AppMetadataEntity(
                provider: userModel.appMetadata!.provider,
                providers: userModel.appMetadata!.providers,
              )
            : null,
        userMetadata: userModel.userMetadata != null
            ? UserMetadataEntity(
                email: userModel.userMetadata!.email,
                emailVerified: userModel.userMetadata!.emailVerified,
                phoneVerified: userModel.userMetadata!.phoneVerified,
                sub: userModel.userMetadata!.sub,
              )
            : null,
        identities: userModel.identities
            ?.map((identityModel) => IdentityEntity(
                  identityId: identityModel.identityId,
                  id: identityModel.id,
                  userId: identityModel.userId,
                  identityData: IdentityDataEntity(
                    email: identityModel.identityData.email,
                    emailVerified: identityModel.identityData.emailVerified,
                    phoneVerified: identityModel.identityData.phoneVerified,
                    sub: identityModel.identityData.sub,
                  ),
                  provider: identityModel.provider,
                  lastSignInAt: identityModel.lastSignInAt,
                  createdAt: identityModel.createdAt,
                  updatedAt: identityModel.updatedAt,
                  email: identityModel.email,
                ))
            .toList(),
        createdAt: userModel.createdAt != null
            ? DateTime.parse(userModel.createdAt!)
            : null,
        updatedAt: userModel.updatedAt != null
            ? DateTime.parse(userModel.updatedAt!)
            : null,
        isAnonymous: userModel.isAnonymous,
      );
      return Right(userEntity);
    } on AppException catch (e) {
      return Left(e);
    } on Exception catch (e) { // Catch any parsing errors that are not AppExceptions
       return Left(UnexpectedException(message: e.toString()));
    }
  }
}
