// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'signup_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SignUpRequestModel _$SignUpRequestModelFromJson(Map<String, dynamic> json) {
  return _SignUpRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpRequestModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpRequestModelCopyWith<SignUpRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpRequestModelCopyWith<$Res> {
  factory $SignUpRequestModelCopyWith(
          SignUpRequestModel value, $Res Function(SignUpRequestModel) then) =
      _$SignUpRequestModelCopyWithImpl<$Res, SignUpRequestModel>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$SignUpRequestModelCopyWithImpl<$Res, $Val extends SignUpRequestModel>
    implements $SignUpRequestModelCopyWith<$Res> {
  _$SignUpRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SignUpRequestModelImplCopyWith<$Res>
    implements $SignUpRequestModelCopyWith<$Res> {
  factory _$$SignUpRequestModelImplCopyWith(_$SignUpRequestModelImpl value,
          $Res Function(_$SignUpRequestModelImpl) then) =
      __$$SignUpRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$SignUpRequestModelImplCopyWithImpl<$Res>
    extends _$SignUpRequestModelCopyWithImpl<$Res, _$SignUpRequestModelImpl>
    implements _$$SignUpRequestModelImplCopyWith<$Res> {
  __$$SignUpRequestModelImplCopyWithImpl(_$SignUpRequestModelImpl _value,
      $Res Function(_$SignUpRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignUpRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpRequestModelImpl implements _SignUpRequestModel {
  const _$SignUpRequestModelImpl({required this.email, required this.password});

  factory _$SignUpRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpRequestModelImplFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'SignUpRequestModel(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpRequestModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpRequestModelImplCopyWith<_$SignUpRequestModelImpl> get copyWith =>
      __$$SignUpRequestModelImplCopyWithImpl<_$SignUpRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpRequestModel implements SignUpRequestModel {
  const factory _SignUpRequestModel(
      {required final String email,
      required final String password}) = _$SignUpRequestModelImpl;

  factory _SignUpRequestModel.fromJson(Map<String, dynamic> json) =
      _$SignUpRequestModelImpl.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$SignUpRequestModelImplCopyWith<_$SignUpRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SignUpResponseModel _$SignUpResponseModelFromJson(Map<String, dynamic> json) {
  return _SignUpResponseModel.fromJson(json);
}

/// @nodoc
mixin _$SignUpResponseModel {
  String get id => throw _privateConstructorUsedError;
  String get aud => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  @JsonKey(name: 'confirmation_sent_at')
  String? get confirmationSentAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'app_metadata')
  AppMetadata get appMetadata => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_metadata')
  UserMetadata get userMetadata => throw _privateConstructorUsedError;
  List<Identity> get identities => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseModelCopyWith<SignUpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseModelCopyWith<$Res> {
  factory $SignUpResponseModelCopyWith(
          SignUpResponseModel value, $Res Function(SignUpResponseModel) then) =
      _$SignUpResponseModelCopyWithImpl<$Res, SignUpResponseModel>;
  @useResult
  $Res call(
      {String id,
      String aud,
      String role,
      String email,
      String? phone,
      @JsonKey(name: 'confirmation_sent_at') String? confirmationSentAt,
      @JsonKey(name: 'app_metadata') AppMetadata appMetadata,
      @JsonKey(name: 'user_metadata') UserMetadata userMetadata,
      List<Identity> identities,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'is_anonymous') bool isAnonymous});

  $AppMetadataCopyWith<$Res> get appMetadata;
  $UserMetadataCopyWith<$Res> get userMetadata;
}

/// @nodoc
class _$SignUpResponseModelCopyWithImpl<$Res, $Val extends SignUpResponseModel>
    implements $SignUpResponseModelCopyWith<$Res> {
  _$SignUpResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? aud = null,
    Object? role = null,
    Object? email = null,
    Object? phone = freezed,
    Object? confirmationSentAt = freezed,
    Object? appMetadata = null,
    Object? userMetadata = null,
    Object? identities = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isAnonymous = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationSentAt: freezed == confirmationSentAt
          ? _value.confirmationSentAt
          : confirmationSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      userMetadata: null == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserMetadata,
      identities: null == identities
          ? _value.identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<Identity>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppMetadataCopyWith<$Res> get appMetadata {
    return $AppMetadataCopyWith<$Res>(_value.appMetadata, (value) {
      return _then(_value.copyWith(appMetadata: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserMetadataCopyWith<$Res> get userMetadata {
    return $UserMetadataCopyWith<$Res>(_value.userMetadata, (value) {
      return _then(_value.copyWith(userMetadata: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SignUpResponseModelImplCopyWith<$Res>
    implements $SignUpResponseModelCopyWith<$Res> {
  factory _$$SignUpResponseModelImplCopyWith(_$SignUpResponseModelImpl value,
          $Res Function(_$SignUpResponseModelImpl) then) =
      __$$SignUpResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String aud,
      String role,
      String email,
      String? phone,
      @JsonKey(name: 'confirmation_sent_at') String? confirmationSentAt,
      @JsonKey(name: 'app_metadata') AppMetadata appMetadata,
      @JsonKey(name: 'user_metadata') UserMetadata userMetadata,
      List<Identity> identities,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      @JsonKey(name: 'is_anonymous') bool isAnonymous});

  @override
  $AppMetadataCopyWith<$Res> get appMetadata;
  @override
  $UserMetadataCopyWith<$Res> get userMetadata;
}

/// @nodoc
class __$$SignUpResponseModelImplCopyWithImpl<$Res>
    extends _$SignUpResponseModelCopyWithImpl<$Res, _$SignUpResponseModelImpl>
    implements _$$SignUpResponseModelImplCopyWith<$Res> {
  __$$SignUpResponseModelImplCopyWithImpl(_$SignUpResponseModelImpl _value,
      $Res Function(_$SignUpResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? aud = null,
    Object? role = null,
    Object? email = null,
    Object? phone = freezed,
    Object? confirmationSentAt = freezed,
    Object? appMetadata = null,
    Object? userMetadata = null,
    Object? identities = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? isAnonymous = null,
  }) {
    return _then(_$SignUpResponseModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      aud: null == aud
          ? _value.aud
          : aud // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      confirmationSentAt: freezed == confirmationSentAt
          ? _value.confirmationSentAt
          : confirmationSentAt // ignore: cast_nullable_to_non_nullable
              as String?,
      appMetadata: null == appMetadata
          ? _value.appMetadata
          : appMetadata // ignore: cast_nullable_to_non_nullable
              as AppMetadata,
      userMetadata: null == userMetadata
          ? _value.userMetadata
          : userMetadata // ignore: cast_nullable_to_non_nullable
              as UserMetadata,
      identities: null == identities
          ? _value._identities
          : identities // ignore: cast_nullable_to_non_nullable
              as List<Identity>,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SignUpResponseModelImpl implements _SignUpResponseModel {
  const _$SignUpResponseModelImpl(
      {required this.id,
      required this.aud,
      required this.role,
      required this.email,
      this.phone,
      @JsonKey(name: 'confirmation_sent_at') this.confirmationSentAt,
      @JsonKey(name: 'app_metadata') required this.appMetadata,
      @JsonKey(name: 'user_metadata') required this.userMetadata,
      required final List<Identity> identities,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'is_anonymous') required this.isAnonymous})
      : _identities = identities;

  factory _$SignUpResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SignUpResponseModelImplFromJson(json);

  @override
  final String id;
  @override
  final String aud;
  @override
  final String role;
  @override
  final String email;
  @override
  final String? phone;
  @override
  @JsonKey(name: 'confirmation_sent_at')
  final String? confirmationSentAt;
  @override
  @JsonKey(name: 'app_metadata')
  final AppMetadata appMetadata;
  @override
  @JsonKey(name: 'user_metadata')
  final UserMetadata userMetadata;
  final List<Identity> _identities;
  @override
  List<Identity> get identities {
    if (_identities is EqualUnmodifiableListView) return _identities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_identities);
  }

  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  @JsonKey(name: 'is_anonymous')
  final bool isAnonymous;

  @override
  String toString() {
    return 'SignUpResponseModel(id: $id, aud: $aud, role: $role, email: $email, phone: $phone, confirmationSentAt: $confirmationSentAt, appMetadata: $appMetadata, userMetadata: $userMetadata, identities: $identities, createdAt: $createdAt, updatedAt: $updatedAt, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignUpResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.aud, aud) || other.aud == aud) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.confirmationSentAt, confirmationSentAt) ||
                other.confirmationSentAt == confirmationSentAt) &&
            (identical(other.appMetadata, appMetadata) ||
                other.appMetadata == appMetadata) &&
            (identical(other.userMetadata, userMetadata) ||
                other.userMetadata == userMetadata) &&
            const DeepCollectionEquality()
                .equals(other._identities, _identities) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      aud,
      role,
      email,
      phone,
      confirmationSentAt,
      appMetadata,
      userMetadata,
      const DeepCollectionEquality().hash(_identities),
      createdAt,
      updatedAt,
      isAnonymous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SignUpResponseModelImplCopyWith<_$SignUpResponseModelImpl> get copyWith =>
      __$$SignUpResponseModelImplCopyWithImpl<_$SignUpResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SignUpResponseModelImplToJson(
      this,
    );
  }
}

abstract class _SignUpResponseModel implements SignUpResponseModel {
  const factory _SignUpResponseModel(
      {required final String id,
      required final String aud,
      required final String role,
      required final String email,
      final String? phone,
      @JsonKey(name: 'confirmation_sent_at') final String? confirmationSentAt,
      @JsonKey(name: 'app_metadata') required final AppMetadata appMetadata,
      @JsonKey(name: 'user_metadata') required final UserMetadata userMetadata,
      required final List<Identity> identities,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      @JsonKey(name: 'is_anonymous')
      required final bool isAnonymous}) = _$SignUpResponseModelImpl;

  factory _SignUpResponseModel.fromJson(Map<String, dynamic> json) =
      _$SignUpResponseModelImpl.fromJson;

  @override
  String get id;
  @override
  String get aud;
  @override
  String get role;
  @override
  String get email;
  @override
  String? get phone;
  @override
  @JsonKey(name: 'confirmation_sent_at')
  String? get confirmationSentAt;
  @override
  @JsonKey(name: 'app_metadata')
  AppMetadata get appMetadata;
  @override
  @JsonKey(name: 'user_metadata')
  UserMetadata get userMetadata;
  @override
  List<Identity> get identities;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  @JsonKey(name: 'is_anonymous')
  bool get isAnonymous;
  @override
  @JsonKey(ignore: true)
  _$$SignUpResponseModelImplCopyWith<_$SignUpResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AppMetadata _$AppMetadataFromJson(Map<String, dynamic> json) {
  return _AppMetadata.fromJson(json);
}

/// @nodoc
mixin _$AppMetadata {
  String get provider => throw _privateConstructorUsedError;
  List<String> get providers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppMetadataCopyWith<AppMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppMetadataCopyWith<$Res> {
  factory $AppMetadataCopyWith(
          AppMetadata value, $Res Function(AppMetadata) then) =
      _$AppMetadataCopyWithImpl<$Res, AppMetadata>;
  @useResult
  $Res call({String provider, List<String> providers});
}

/// @nodoc
class _$AppMetadataCopyWithImpl<$Res, $Val extends AppMetadata>
    implements $AppMetadataCopyWith<$Res> {
  _$AppMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? providers = null,
  }) {
    return _then(_value.copyWith(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providers: null == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppMetadataImplCopyWith<$Res>
    implements $AppMetadataCopyWith<$Res> {
  factory _$$AppMetadataImplCopyWith(
          _$AppMetadataImpl value, $Res Function(_$AppMetadataImpl) then) =
      __$$AppMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String provider, List<String> providers});
}

/// @nodoc
class __$$AppMetadataImplCopyWithImpl<$Res>
    extends _$AppMetadataCopyWithImpl<$Res, _$AppMetadataImpl>
    implements _$$AppMetadataImplCopyWith<$Res> {
  __$$AppMetadataImplCopyWithImpl(
      _$AppMetadataImpl _value, $Res Function(_$AppMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? provider = null,
    Object? providers = null,
  }) {
    return _then(_$AppMetadataImpl(
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      providers: null == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppMetadataImpl implements _AppMetadata {
  const _$AppMetadataImpl(
      {required this.provider, required final List<String> providers})
      : _providers = providers;

  factory _$AppMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppMetadataImplFromJson(json);

  @override
  final String provider;
  final List<String> _providers;
  @override
  List<String> get providers {
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providers);
  }

  @override
  String toString() {
    return 'AppMetadata(provider: $provider, providers: $providers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppMetadataImpl &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, provider, const DeepCollectionEquality().hash(_providers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppMetadataImplCopyWith<_$AppMetadataImpl> get copyWith =>
      __$$AppMetadataImplCopyWithImpl<_$AppMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppMetadataImplToJson(
      this,
    );
  }
}

abstract class _AppMetadata implements AppMetadata {
  const factory _AppMetadata(
      {required final String provider,
      required final List<String> providers}) = _$AppMetadataImpl;

  factory _AppMetadata.fromJson(Map<String, dynamic> json) =
      _$AppMetadataImpl.fromJson;

  @override
  String get provider;
  @override
  List<String> get providers;
  @override
  @JsonKey(ignore: true)
  _$$AppMetadataImplCopyWith<_$AppMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserMetadata _$UserMetadataFromJson(Map<String, dynamic> json) {
  return _UserMetadata.fromJson(json);
}

/// @nodoc
mixin _$UserMetadata {
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_verified')
  bool get phoneVerified => throw _privateConstructorUsedError;
  String get sub => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserMetadataCopyWith<UserMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserMetadataCopyWith<$Res> {
  factory $UserMetadataCopyWith(
          UserMetadata value, $Res Function(UserMetadata) then) =
      _$UserMetadataCopyWithImpl<$Res, UserMetadata>;
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone_verified') bool phoneVerified,
      String sub});
}

/// @nodoc
class _$UserMetadataCopyWithImpl<$Res, $Val extends UserMetadata>
    implements $UserMetadataCopyWith<$Res> {
  _$UserMetadataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? sub = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserMetadataImplCopyWith<$Res>
    implements $UserMetadataCopyWith<$Res> {
  factory _$$UserMetadataImplCopyWith(
          _$UserMetadataImpl value, $Res Function(_$UserMetadataImpl) then) =
      __$$UserMetadataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone_verified') bool phoneVerified,
      String sub});
}

/// @nodoc
class __$$UserMetadataImplCopyWithImpl<$Res>
    extends _$UserMetadataCopyWithImpl<$Res, _$UserMetadataImpl>
    implements _$$UserMetadataImplCopyWith<$Res> {
  __$$UserMetadataImplCopyWithImpl(
      _$UserMetadataImpl _value, $Res Function(_$UserMetadataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? sub = null,
  }) {
    return _then(_$UserMetadataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserMetadataImpl implements _UserMetadata {
  const _$UserMetadataImpl(
      {required this.email,
      @JsonKey(name: 'email_verified') required this.emailVerified,
      @JsonKey(name: 'phone_verified') required this.phoneVerified,
      required this.sub});

  factory _$UserMetadataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserMetadataImplFromJson(json);

  @override
  final String email;
  @override
  @JsonKey(name: 'email_verified')
  final bool emailVerified;
  @override
  @JsonKey(name: 'phone_verified')
  final bool phoneVerified;
  @override
  final String sub;

  @override
  String toString() {
    return 'UserMetadata(email: $email, emailVerified: $emailVerified, phoneVerified: $phoneVerified, sub: $sub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserMetadataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.sub, sub) || other.sub == sub));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, emailVerified, phoneVerified, sub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserMetadataImplCopyWith<_$UserMetadataImpl> get copyWith =>
      __$$UserMetadataImplCopyWithImpl<_$UserMetadataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserMetadataImplToJson(
      this,
    );
  }
}

abstract class _UserMetadata implements UserMetadata {
  const factory _UserMetadata(
      {required final String email,
      @JsonKey(name: 'email_verified') required final bool emailVerified,
      @JsonKey(name: 'phone_verified') required final bool phoneVerified,
      required final String sub}) = _$UserMetadataImpl;

  factory _UserMetadata.fromJson(Map<String, dynamic> json) =
      _$UserMetadataImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(name: 'email_verified')
  bool get emailVerified;
  @override
  @JsonKey(name: 'phone_verified')
  bool get phoneVerified;
  @override
  String get sub;
  @override
  @JsonKey(ignore: true)
  _$$UserMetadataImplCopyWith<_$UserMetadataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Identity _$IdentityFromJson(Map<String, dynamic> json) {
  return _Identity.fromJson(json);
}

/// @nodoc
mixin _$Identity {
  @JsonKey(name: 'identity_id')
  String get identityId => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'identity_data')
  IdentityData get identityData => throw _privateConstructorUsedError;
  String get provider => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_sign_in_at')
  String? get lastSignInAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String get updatedAt => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityCopyWith<Identity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityCopyWith<$Res> {
  factory $IdentityCopyWith(Identity value, $Res Function(Identity) then) =
      _$IdentityCopyWithImpl<$Res, Identity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'identity_id') String identityId,
      String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'identity_data') IdentityData identityData,
      String provider,
      @JsonKey(name: 'last_sign_in_at') String? lastSignInAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String? email});

  $IdentityDataCopyWith<$Res> get identityData;
}

/// @nodoc
class _$IdentityCopyWithImpl<$Res, $Val extends Identity>
    implements $IdentityCopyWith<$Res> {
  _$IdentityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityId = null,
    Object? id = null,
    Object? userId = null,
    Object? identityData = null,
    Object? provider = null,
    Object? lastSignInAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      identityId: null == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      identityData: null == identityData
          ? _value.identityData
          : identityData // ignore: cast_nullable_to_non_nullable
              as IdentityData,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentityDataCopyWith<$Res> get identityData {
    return $IdentityDataCopyWith<$Res>(_value.identityData, (value) {
      return _then(_value.copyWith(identityData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IdentityImplCopyWith<$Res>
    implements $IdentityCopyWith<$Res> {
  factory _$$IdentityImplCopyWith(
          _$IdentityImpl value, $Res Function(_$IdentityImpl) then) =
      __$$IdentityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'identity_id') String identityId,
      String id,
      @JsonKey(name: 'user_id') String userId,
      @JsonKey(name: 'identity_data') IdentityData identityData,
      String provider,
      @JsonKey(name: 'last_sign_in_at') String? lastSignInAt,
      @JsonKey(name: 'created_at') String createdAt,
      @JsonKey(name: 'updated_at') String updatedAt,
      String? email});

  @override
  $IdentityDataCopyWith<$Res> get identityData;
}

/// @nodoc
class __$$IdentityImplCopyWithImpl<$Res>
    extends _$IdentityCopyWithImpl<$Res, _$IdentityImpl>
    implements _$$IdentityImplCopyWith<$Res> {
  __$$IdentityImplCopyWithImpl(
      _$IdentityImpl _value, $Res Function(_$IdentityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identityId = null,
    Object? id = null,
    Object? userId = null,
    Object? identityData = null,
    Object? provider = null,
    Object? lastSignInAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? email = freezed,
  }) {
    return _then(_$IdentityImpl(
      identityId: null == identityId
          ? _value.identityId
          : identityId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      identityData: null == identityData
          ? _value.identityData
          : identityData // ignore: cast_nullable_to_non_nullable
              as IdentityData,
      provider: null == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String,
      lastSignInAt: freezed == lastSignInAt
          ? _value.lastSignInAt
          : lastSignInAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityImpl implements _Identity {
  const _$IdentityImpl(
      {@JsonKey(name: 'identity_id') required this.identityId,
      required this.id,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'identity_data') required this.identityData,
      required this.provider,
      @JsonKey(name: 'last_sign_in_at') this.lastSignInAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      this.email});

  factory _$IdentityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityImplFromJson(json);

  @override
  @JsonKey(name: 'identity_id')
  final String identityId;
  @override
  final String id;
  @override
  @JsonKey(name: 'user_id')
  final String userId;
  @override
  @JsonKey(name: 'identity_data')
  final IdentityData identityData;
  @override
  final String provider;
  @override
  @JsonKey(name: 'last_sign_in_at')
  final String? lastSignInAt;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String updatedAt;
  @override
  final String? email;

  @override
  String toString() {
    return 'Identity(identityId: $identityId, id: $id, userId: $userId, identityData: $identityData, provider: $provider, lastSignInAt: $lastSignInAt, createdAt: $createdAt, updatedAt: $updatedAt, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityImpl &&
            (identical(other.identityId, identityId) ||
                other.identityId == identityId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.identityData, identityData) ||
                other.identityData == identityData) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            (identical(other.lastSignInAt, lastSignInAt) ||
                other.lastSignInAt == lastSignInAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, identityId, id, userId,
      identityData, provider, lastSignInAt, createdAt, updatedAt, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityImplCopyWith<_$IdentityImpl> get copyWith =>
      __$$IdentityImplCopyWithImpl<_$IdentityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityImplToJson(
      this,
    );
  }
}

abstract class _Identity implements Identity {
  const factory _Identity(
      {@JsonKey(name: 'identity_id') required final String identityId,
      required final String id,
      @JsonKey(name: 'user_id') required final String userId,
      @JsonKey(name: 'identity_data') required final IdentityData identityData,
      required final String provider,
      @JsonKey(name: 'last_sign_in_at') final String? lastSignInAt,
      @JsonKey(name: 'created_at') required final String createdAt,
      @JsonKey(name: 'updated_at') required final String updatedAt,
      final String? email}) = _$IdentityImpl;

  factory _Identity.fromJson(Map<String, dynamic> json) =
      _$IdentityImpl.fromJson;

  @override
  @JsonKey(name: 'identity_id')
  String get identityId;
  @override
  String get id;
  @override
  @JsonKey(name: 'user_id')
  String get userId;
  @override
  @JsonKey(name: 'identity_data')
  IdentityData get identityData;
  @override
  String get provider;
  @override
  @JsonKey(name: 'last_sign_in_at')
  String? get lastSignInAt;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String get updatedAt;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$IdentityImplCopyWith<_$IdentityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

IdentityData _$IdentityDataFromJson(Map<String, dynamic> json) {
  return _IdentityData.fromJson(json);
}

/// @nodoc
mixin _$IdentityData {
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'email_verified')
  bool get emailVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_verified')
  bool get phoneVerified => throw _privateConstructorUsedError;
  String get sub => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityDataCopyWith<IdentityData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityDataCopyWith<$Res> {
  factory $IdentityDataCopyWith(
          IdentityData value, $Res Function(IdentityData) then) =
      _$IdentityDataCopyWithImpl<$Res, IdentityData>;
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone_verified') bool phoneVerified,
      String sub});
}

/// @nodoc
class _$IdentityDataCopyWithImpl<$Res, $Val extends IdentityData>
    implements $IdentityDataCopyWith<$Res> {
  _$IdentityDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? sub = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IdentityDataImplCopyWith<$Res>
    implements $IdentityDataCopyWith<$Res> {
  factory _$$IdentityDataImplCopyWith(
          _$IdentityDataImpl value, $Res Function(_$IdentityDataImpl) then) =
      __$$IdentityDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email,
      @JsonKey(name: 'email_verified') bool emailVerified,
      @JsonKey(name: 'phone_verified') bool phoneVerified,
      String sub});
}

/// @nodoc
class __$$IdentityDataImplCopyWithImpl<$Res>
    extends _$IdentityDataCopyWithImpl<$Res, _$IdentityDataImpl>
    implements _$$IdentityDataImplCopyWith<$Res> {
  __$$IdentityDataImplCopyWithImpl(
      _$IdentityDataImpl _value, $Res Function(_$IdentityDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? emailVerified = null,
    Object? phoneVerified = null,
    Object? sub = null,
  }) {
    return _then(_$IdentityDataImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneVerified: null == phoneVerified
          ? _value.phoneVerified
          : phoneVerified // ignore: cast_nullable_to_non_nullable
              as bool,
      sub: null == sub
          ? _value.sub
          : sub // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityDataImpl implements _IdentityData {
  const _$IdentityDataImpl(
      {required this.email,
      @JsonKey(name: 'email_verified') required this.emailVerified,
      @JsonKey(name: 'phone_verified') required this.phoneVerified,
      required this.sub});

  factory _$IdentityDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityDataImplFromJson(json);

  @override
  final String email;
  @override
  @JsonKey(name: 'email_verified')
  final bool emailVerified;
  @override
  @JsonKey(name: 'phone_verified')
  final bool phoneVerified;
  @override
  final String sub;

  @override
  String toString() {
    return 'IdentityData(email: $email, emailVerified: $emailVerified, phoneVerified: $phoneVerified, sub: $sub)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityDataImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.phoneVerified, phoneVerified) ||
                other.phoneVerified == phoneVerified) &&
            (identical(other.sub, sub) || other.sub == sub));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, email, emailVerified, phoneVerified, sub);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityDataImplCopyWith<_$IdentityDataImpl> get copyWith =>
      __$$IdentityDataImplCopyWithImpl<_$IdentityDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityDataImplToJson(
      this,
    );
  }
}

abstract class _IdentityData implements IdentityData {
  const factory _IdentityData(
      {required final String email,
      @JsonKey(name: 'email_verified') required final bool emailVerified,
      @JsonKey(name: 'phone_verified') required final bool phoneVerified,
      required final String sub}) = _$IdentityDataImpl;

  factory _IdentityData.fromJson(Map<String, dynamic> json) =
      _$IdentityDataImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(name: 'email_verified')
  bool get emailVerified;
  @override
  @JsonKey(name: 'phone_verified')
  bool get phoneVerified;
  @override
  String get sub;
  @override
  @JsonKey(ignore: true)
  _$$IdentityDataImplCopyWith<_$IdentityDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
