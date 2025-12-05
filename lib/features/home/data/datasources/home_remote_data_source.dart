import 'package:dio/dio.dart';
import 'package:flowvahub/core/error/exceptions.dart';
import 'package:flowvahub/core/rest_api_clients/auth_api_service/auth_api_service.dart';
import 'package:flowvahub/features/auth/data/models/user/user_model.dart'; // Reusing UserModel as the response

abstract class HomeRemoteDataSource {
  Future<UserModel> getUserDetails();
}

class HomeRemoteDataSourceImpl implements HomeRemoteDataSource {
  final AuthApiService _authApiService;

  HomeRemoteDataSourceImpl(this._authApiService);

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
  Future<UserModel> getUserDetails() async {
    try {
      final response = await _authApiService.getUserDetails();
      return response;
    } on DioException catch (e) {
      throw _handleDioException(e);
    } catch (e) {
      throw UnexpectedException(message: e.toString());
    }
  }
}