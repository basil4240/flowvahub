import 'package:equatable/equatable.dart';
import 'package:flowvahub/features/auth/domain/entities/user_entity.dart';

class AuthEntity extends Equatable {
  final String? accessToken;
  final String? tokenType;
  final int? expiresIn;
  final int? expiresAt;
  final String? refreshToken;
  final UserEntity user;

  const AuthEntity({
    this.accessToken,
    this.tokenType,
    this.expiresIn,
    this.expiresAt,
    this.refreshToken,
    required this.user,
  });

  @override
  List<Object?> get props => [
        accessToken, tokenType, expiresIn, expiresAt, refreshToken, user
      ];
}
