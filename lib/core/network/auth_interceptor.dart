import 'package:dio/dio.dart';

/// An interceptor that adds the authentication token to requests.
class AuthInterceptor extends Interceptor {
  final Dio dio;

  AuthInterceptor(this.dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {


    return handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // TODO: Implement token refresh logic if a 401 Unauthorized error occurs.
    // For now, we just pass the error along.
    return handler.next(err);
  }
}
