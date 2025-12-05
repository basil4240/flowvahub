import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_email_verification_model.freezed.dart';
part 'send_email_verification_model.g.dart';

@freezed
class SendEmailVerificationRequestModel with _$SendEmailVerificationRequestModel {
  const factory SendEmailVerificationRequestModel({
    required String email
  }) = _SendEmailVerificationRequestModel;

  factory SendEmailVerificationRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SendEmailVerificationRequestModelFromJson(json);
}
