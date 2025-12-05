import 'package:dio/dio.dart';
import 'package:flowvahub/core/error/exceptions.dart';
import 'package:flowvahub/core/rest_api_clients/auth_api_service/auth_api_service.dart';
import 'package:flowvahub/features/auth/data/models/forgot_password/forgot_password_model.dart';
import 'package:flowvahub/features/auth/data/models/login/login_model.dart';
import 'package:flowvahub/features/auth/data/models/send_email_verification/send_email_verification_model.dart'; // New import
import 'package:flowvahub/features/auth/data/models/signup/signup_model.dart';

abstract class AuthRemoteDataSource {
  Future<SignUpResponseModel> signUp({required String email, required String password});
  Future<LoginResponseModel> login({required String email, required String password});
  Future<void> forgotPassword({required String email});
  Future<void> sendEmailVerification({required String email}); // New method
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService _authApiService;

  AuthRemoteDataSourceImpl(this._authApiService);

  T _handleDioException<T>(DioException e) {
    String errorMessage = e.message ?? 'Unknown error occurred.';
    int? statusCode = e.response?.statusCode;

    if (e.response?.data is Map<String, dynamic>) {
      final responseData = e.response?.data as Map<String, dynamic>;
      // Common keys for error messages in APIs
      errorMessage = responseData['message'] ?? responseData['error'] ?? responseData['error_description'] ?? errorMessage;
    }

    if (e.type == DioExceptionType.connectionError) {
      throw const NetworkException();
    }

    switch (statusCode) {
      case 401:
        throw UnauthorisedException(message: errorMessage, statusCode: statusCode);
      case 404:
        throw NotFoundException(message: errorMessage, statusCode: statusCode);
      case int code when code >= 400 && code < 500:
        throw ClientException(message: 'Invalid Credentials', statusCode: statusCode);
      case int code when code >= 500 && code < 600:
        throw ServerException(message: errorMessage, statusCode: statusCode);
      default:
        throw UnexpectedException(message: errorMessage);
    }
  }

  @override
  Future<SignUpResponseModel> signUp({required String email, required String password}) async {
    try {
      final request = SignUpRequestModel(email: email, password: password);
      final response = await _authApiService.signUp(request);
      return response;
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnexpectedException(message: e.toString());
    }
  }

  @override
  Future<LoginResponseModel> login({required String email, required String password}) async {
    try {
      final request = LoginRequestModel(email: email, password: password);
      final response = await _authApiService.login(request);
      return response;
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnexpectedException(message: e.toString());
    }
  }

  @override
  Future<void> forgotPassword({required String email}) async {
    try {
      final request = ForgotPasswordRequestModel(email: email);
      await _authApiService.forgotPassword(request);
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnexpectedException(message: e.toString());
    }
  }

  @override
  Future<void> sendEmailVerification({required String email}) async {
    try {
      final request = SendEmailVerificationRequestModel(email: email);
      await _authApiService.sendEmailVerification(request);
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnexpectedException(message: e.toString());
    }
  }
}
