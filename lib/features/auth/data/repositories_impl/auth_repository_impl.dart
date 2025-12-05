import 'package:dartz/dartz.dart';
import 'package:flowvahub/core/error/exceptions.dart';
import 'package:flowvahub/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flowvahub/features/auth/domain/entities/app_metadata_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/auth_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/identity_data_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/identity_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/user_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/user_metadata_entity.dart';
import 'package:flowvahub/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
  });

  @override
  Future<Either<AppException, AuthEntity>> signUp({
    required String email,
    required String password,
  }) async {
    try {
      final signUpResponseModel = await remoteDataSource.signUp(email: email, password: password);

      // Map SignUpResponseModel to AuthEntity
      final userEntity = UserEntity(
        id: signUpResponseModel.id,
        aud: signUpResponseModel.aud,
        role: signUpResponseModel.role,
        email: signUpResponseModel.email,
        phone: signUpResponseModel.phone,
        confirmationSentAt: signUpResponseModel.confirmationSentAt,
        appMetadata: AppMetadataEntity(
                provider: signUpResponseModel.appMetadata.provider,
                providers: signUpResponseModel.appMetadata.providers,
              ),
        userMetadata: UserMetadataEntity(
                email: signUpResponseModel.userMetadata.email,
                emailVerified: signUpResponseModel.userMetadata.emailVerified,
                phoneVerified: signUpResponseModel.userMetadata.phoneVerified,
                sub: signUpResponseModel.userMetadata.sub,
              ),
        identities: signUpResponseModel.identities
            .map((identityModel) => IdentityEntity(
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
        createdAt: DateTime.parse(signUpResponseModel.createdAt),
        updatedAt: DateTime.parse(signUpResponseModel.updatedAt),
        isAnonymous: signUpResponseModel.isAnonymous,
      );

      // SignUpResponseModel does not directly provide access tokens
      final authEntity = AuthEntity(
        user: userEntity,
        accessToken: null,
        tokenType: null,
        expiresIn: null,
        expiresAt: null,
        refreshToken: null,
      );
      // localDataSource.cacheAuth(authEntity); // Removed as per user's instruction
      return Right(authEntity);
    } on AppException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, AuthEntity>> login({
    required String email,
    required String password,
  }) async {
    try {
      final loginResponseModel = await remoteDataSource.login(email: email, password: password);

      // Map LoginResponseModel to AuthEntity
      final userEntity = UserEntity(
        id: loginResponseModel.user.id,
        aud: loginResponseModel.user.aud,
        role: loginResponseModel.user.role,
        email: loginResponseModel.user.email,
        emailConfirmedAt: loginResponseModel.user.emailConfirmedAt,
        phone: loginResponseModel.user.phone,
        confirmationSentAt: loginResponseModel.user.confirmationSentAt,
        confirmedAt: loginResponseModel.user.confirmedAt,
        lastSignInAt: loginResponseModel.user.lastSignInAt,
        appMetadata: loginResponseModel.user.appMetadata != null
            ? AppMetadataEntity(
                provider: loginResponseModel.user.appMetadata!.provider,
                providers: loginResponseModel.user.appMetadata!.providers,
              )
            : null,
        userMetadata: loginResponseModel.user.userMetadata != null
            ? UserMetadataEntity(
                email: loginResponseModel.user.userMetadata!.email,
                emailVerified: loginResponseModel.user.userMetadata!.emailVerified,
                phoneVerified: loginResponseModel.user.userMetadata!.phoneVerified,
                sub: loginResponseModel.user.userMetadata!.sub,
              )
            : null,
        identities: loginResponseModel.user.identities
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
        createdAt: loginResponseModel.user.createdAt != null
            ? DateTime.parse(loginResponseModel.user.createdAt!)
            : null,
        updatedAt: loginResponseModel.user.updatedAt != null
            ? DateTime.parse(loginResponseModel.user.updatedAt!)
            : null,
        isAnonymous: loginResponseModel.user.isAnonymous,
      );

      final authEntity = AuthEntity(
        accessToken: loginResponseModel.accessToken,
        tokenType: loginResponseModel.tokenType,
        expiresIn: loginResponseModel.expiresIn,
        expiresAt: loginResponseModel.expiresAt,
        refreshToken: loginResponseModel.refreshToken,
        user: userEntity,
      );
      // localDataSource.cacheAuth(authEntity); // Removed as per user's instruction
      return Right(authEntity);
    } on AppException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, void>> forgotPassword({required String email}) async {

    try {
      final result = await remoteDataSource.forgotPassword(email: email);
      return Right(result);
    } on AppException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<AppException, void>> sendEmailVerification({required String email}) async {
    try {
      final result = await remoteDataSource.sendEmailVerification(email: email);
      return Right(result);
    } on AppException catch (e) {
      return Left(e);
    }
  }
}