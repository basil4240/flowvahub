import 'package:equatable/equatable.dart';
import 'package:flowvahub/features/auth/domain/entities/identity_data_entity.dart';

class IdentityEntity extends Equatable {
  final String identityId;
  final String id;
  final String userId;
  final IdentityDataEntity identityData;
  final String provider;
  final String? lastSignInAt;
  final String createdAt;
  final String updatedAt;
  final String? email;

  const IdentityEntity({
    required this.identityId,
    required this.id,
    required this.userId,
    required this.identityData,
    required this.provider,
    this.lastSignInAt,
    required this.createdAt,
    required this.updatedAt,
    this.email,
  });

  @override
  List<Object?> get props => [
        identityId, id, userId, identityData, provider, lastSignInAt, createdAt,
        updatedAt, email
      ];
}
