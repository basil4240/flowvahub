import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../features/auth/data/models/forgot_password/forgot_password_model.dart';
import '../../../features/auth/data/models/login/login_model.dart';
import '../../../features/auth/data/models/send_email_verification/send_email_verification_model.dart';
import '../../../features/auth/data/models/signup/signup_model.dart';
import '../../../features/auth/data/models/user/user_model.dart'; // New Import

part 'auth_api_service.g.dart';

@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST('/auth/v1/signup')
  Future<SignUpResponseModel> signUp(@Body() SignUpRequestModel signUpRequest);

  @POST('/auth/v1/token?grant_type=password')
  Future<LoginResponseModel> login(@Body() LoginRequestModel loginRequest);

  @POST('/auth/v1/recover')
  Future<void> forgotPassword(
      @Body() ForgotPasswordRequestModel forgotPasswordRequest);

  @POST('/auth/v1/resend')
  Future<void> sendEmailVerification(
      @Body() SendEmailVerificationRequestModel sendEmailVerificationRequest);

  @GET('/auth/v1/user')
  Future<UserModel> getUserDetails();

}
