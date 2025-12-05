import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String aud,
    required String role,
    required String email,
    @JsonKey(name: 'email_confirmed_at') String? emailConfirmedAt,
    String? phone,
    @JsonKey(name: 'confirmation_sent_at') String? confirmationSentAt,
    @JsonKey(name: 'confirmed_at') String? confirmedAt,
    @JsonKey(name: 'last_sign_in_at') String? lastSignInAt,
    @JsonKey(name: 'app_metadata') AppMetadata? appMetadata,
    @JsonKey(name: 'user_metadata') UserMetadata? userMetadata,
    List<Identity>? identities,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'is_anonymous') bool? isAnonymous,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

@freezed
class AppMetadata with _$AppMetadata {
  const factory AppMetadata({
    required String provider,
    required List<String> providers,
  }) = _AppMetadata;

  factory AppMetadata.fromJson(Map<String, dynamic> json) =>
      _$AppMetadataFromJson(json);
}

@freezed
class UserMetadata with _$UserMetadata {
  const factory UserMetadata({
    required String email,
    @JsonKey(name: 'email_verified') required bool emailVerified,
    @JsonKey(name: 'phone_verified') required bool phoneVerified,
    required String sub,
  }) = _UserMetadata;

  factory UserMetadata.fromJson(Map<String, dynamic> json) =>
      _$UserMetadataFromJson(json);
}

@freezed
class Identity with _$Identity {
  const factory Identity({
    @JsonKey(name: 'identity_id') required String identityId,
    required String id,
    @JsonKey(name: 'user_id') required String userId,
    @JsonKey(name: 'identity_data') required IdentityData identityData,
    required String provider,
    @JsonKey(name: 'last_sign_in_at') String? lastSignInAt,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    String? email,
  }) = _Identity;

  factory Identity.fromJson(Map<String, dynamic> json) =>
      _$IdentityFromJson(json);
}

@freezed
class IdentityData with _$IdentityData {
  const factory IdentityData({
    required String email,
    @JsonKey(name: 'email_verified') required bool emailVerified,
    @JsonKey(name: 'phone_verified') required bool phoneVerified,
    required String sub,
  }) = _IdentityData;

  factory IdentityData.fromJson(Map<String, dynamic> json) =>
      _$IdentityDataFromJson(json);
}
