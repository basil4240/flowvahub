// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_email_verification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SendEmailVerificationRequestModel _$SendEmailVerificationRequestModelFromJson(
    Map<String, dynamic> json) {
  return _SendEmailVerificationRequestModel.fromJson(json);
}

/// @nodoc
mixin _$SendEmailVerificationRequestModel {
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendEmailVerificationRequestModelCopyWith<SendEmailVerificationRequestModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendEmailVerificationRequestModelCopyWith<$Res> {
  factory $SendEmailVerificationRequestModelCopyWith(
          SendEmailVerificationRequestModel value,
          $Res Function(SendEmailVerificationRequestModel) then) =
      _$SendEmailVerificationRequestModelCopyWithImpl<$Res,
          SendEmailVerificationRequestModel>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$SendEmailVerificationRequestModelCopyWithImpl<$Res,
        $Val extends SendEmailVerificationRequestModel>
    implements $SendEmailVerificationRequestModelCopyWith<$Res> {
  _$SendEmailVerificationRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendEmailVerificationRequestModelImplCopyWith<$Res>
    implements $SendEmailVerificationRequestModelCopyWith<$Res> {
  factory _$$SendEmailVerificationRequestModelImplCopyWith(
          _$SendEmailVerificationRequestModelImpl value,
          $Res Function(_$SendEmailVerificationRequestModelImpl) then) =
      __$$SendEmailVerificationRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendEmailVerificationRequestModelImplCopyWithImpl<$Res>
    extends _$SendEmailVerificationRequestModelCopyWithImpl<$Res,
        _$SendEmailVerificationRequestModelImpl>
    implements _$$SendEmailVerificationRequestModelImplCopyWith<$Res> {
  __$$SendEmailVerificationRequestModelImplCopyWithImpl(
      _$SendEmailVerificationRequestModelImpl _value,
      $Res Function(_$SendEmailVerificationRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendEmailVerificationRequestModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SendEmailVerificationRequestModelImpl
    implements _SendEmailVerificationRequestModel {
  const _$SendEmailVerificationRequestModelImpl({required this.email});

  factory _$SendEmailVerificationRequestModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SendEmailVerificationRequestModelImplFromJson(json);

  @override
  final String email;

  @override
  String toString() {
    return 'SendEmailVerificationRequestModel(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendEmailVerificationRequestModelImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendEmailVerificationRequestModelImplCopyWith<
          _$SendEmailVerificationRequestModelImpl>
      get copyWith => __$$SendEmailVerificationRequestModelImplCopyWithImpl<
          _$SendEmailVerificationRequestModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SendEmailVerificationRequestModelImplToJson(
      this,
    );
  }
}

abstract class _SendEmailVerificationRequestModel
    implements SendEmailVerificationRequestModel {
  const factory _SendEmailVerificationRequestModel(
      {required final String email}) = _$SendEmailVerificationRequestModelImpl;

  factory _SendEmailVerificationRequestModel.fromJson(
          Map<String, dynamic> json) =
      _$SendEmailVerificationRequestModelImpl.fromJson;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendEmailVerificationRequestModelImplCopyWith<
          _$SendEmailVerificationRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
