import 'package:equatable/equatable.dart';
import 'package:flowvahub/features/auth/domain/entities/app_metadata_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/identity_entity.dart';
import 'package:flowvahub/features/auth/domain/entities/user_metadata_entity.dart';

class UserEntity extends Equatable {
  final String id;
  final String aud;
  final String role;
  final String email;
  final String? emailConfirmedAt;
  final String? phone;
  final String? confirmationSentAt;
  final String? confirmedAt;
  final String? lastSignInAt;
  final AppMetadataEntity? appMetadata;
  final UserMetadataEntity? userMetadata;
  final List<IdentityEntity>? identities;
  final DateTime? createdAt; // Changed from String to DateTime, and made nullable
  final DateTime? updatedAt; // Changed from String to DateTime, and made nullable
  final bool? isAnonymous;

  const UserEntity({
    required this.id,
    required this.aud,
    required this.role,
    required this.email,
    this.emailConfirmedAt,
    this.phone,
    this.confirmationSentAt,
    this.confirmedAt,
    this.lastSignInAt,
    this.appMetadata,
    this.userMetadata,
    this.identities,
    this.createdAt,
    this.updatedAt,
    this.isAnonymous,
  });

  @override
  List<Object?> get props => [
        id, aud, role, email, emailConfirmedAt, phone, confirmationSentAt,
        confirmedAt, lastSignInAt, appMetadata, userMetadata, identities,
        createdAt, updatedAt, isAnonymous
      ];
}