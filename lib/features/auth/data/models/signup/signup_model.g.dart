// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestModelImpl _$$SignUpRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpRequestModelImpl(
      email: json['email'] as String,
      password: json['password'] as String,
    );

Map<String, dynamic> _$$SignUpRequestModelImplToJson(
        _$SignUpRequestModelImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
    };

_$SignUpResponseModelImpl _$$SignUpResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SignUpResponseModelImpl(
      id: json['id'] as String,
      aud: json['aud'] as String,
      role: json['role'] as String,
      email: json['email'] as String,
      phone: json['phone'] as String?,
      confirmationSentAt: json['confirmation_sent_at'] as String?,
      appMetadata:
          AppMetadata.fromJson(json['app_metadata'] as Map<String, dynamic>),
      userMetadata:
          UserMetadata.fromJson(json['user_metadata'] as Map<String, dynamic>),
      identities: (json['identities'] as List<dynamic>)
          .map((e) => Identity.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      isAnonymous: json['is_anonymous'] as bool,
    );

Map<String, dynamic> _$$SignUpResponseModelImplToJson(
        _$SignUpResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'aud': instance.aud,
      'role': instance.role,
      'email': instance.email,
      'phone': instance.phone,
      'confirmation_sent_at': instance.confirmationSentAt,
      'app_metadata': instance.appMetadata,
      'user_metadata': instance.userMetadata,
      'identities': instance.identities,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'is_anonymous': instance.isAnonymous,
    };

_$AppMetadataImpl _$$AppMetadataImplFromJson(Map<String, dynamic> json) =>
    _$AppMetadataImpl(
      provider: json['provider'] as String,
      providers:
          (json['providers'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$AppMetadataImplToJson(_$AppMetadataImpl instance) =>
    <String, dynamic>{
      'provider': instance.provider,
      'providers': instance.providers,
    };

_$UserMetadataImpl _$$UserMetadataImplFromJson(Map<String, dynamic> json) =>
    _$UserMetadataImpl(
      email: json['email'] as String,
      emailVerified: json['email_verified'] as bool,
      phoneVerified: json['phone_verified'] as bool,
      sub: json['sub'] as String,
    );

Map<String, dynamic> _$$UserMetadataImplToJson(_$UserMetadataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'email_verified': instance.emailVerified,
      'phone_verified': instance.phoneVerified,
      'sub': instance.sub,
    };

_$IdentityImpl _$$IdentityImplFromJson(Map<String, dynamic> json) =>
    _$IdentityImpl(
      identityId: json['identity_id'] as String,
      id: json['id'] as String,
      userId: json['user_id'] as String,
      identityData:
          IdentityData.fromJson(json['identity_data'] as Map<String, dynamic>),
      provider: json['provider'] as String,
      lastSignInAt: json['last_sign_in_at'] as String?,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$IdentityImplToJson(_$IdentityImpl instance) =>
    <String, dynamic>{
      'identity_id': instance.identityId,
      'id': instance.id,
      'user_id': instance.userId,
      'identity_data': instance.identityData,
      'provider': instance.provider,
      'last_sign_in_at': instance.lastSignInAt,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'email': instance.email,
    };

_$IdentityDataImpl _$$IdentityDataImplFromJson(Map<String, dynamic> json) =>
    _$IdentityDataImpl(
      email: json['email'] as String,
      emailVerified: json['email_verified'] as bool,
      phoneVerified: json['phone_verified'] as bool,
      sub: json['sub'] as String,
    );

Map<String, dynamic> _$$IdentityDataImplToJson(_$IdentityDataImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'email_verified': instance.emailVerified,
      'phone_verified': instance.phoneVerified,
      'sub': instance.sub,
    };
