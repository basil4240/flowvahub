import 'package:dio/dio.dart';
import 'package:flowvahub/core/network/auth_interceptor.dart';

// TODO: These values should be loaded from environment variables/config file, not hardcoded.
const String baseUrl = 'https://wlqnpccpougvdrxshvhe.supabase.co';
const String anonKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6IndscW5wY2Nwb3VndmRyeHNodmhlIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NjQ4MzcxNzgsImV4cCI6MjA4MDQxMzE3OH0.UpmDlyZQ7ZhknVS7Y2t8gyv4G_kLTctjcvumYLaRHWw';

/// API client for HTTP requests, configured for the application's backend.
class ApiClient {
  final Dio _dio;

  // Modified constructor to accept AuthLocalDataSource
  ApiClient(this._dio) {
    _dio.options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {
        'apikey': anonKey,
        'Content-Type': 'application/json',
      },
    );

    // Add logging and custom interceptors
    // Note: LogInterceptor should be the last interceptor for it to log final request state.
    _dio.interceptors.addAll([
      AuthInterceptor(_dio), // Pass localDataSource
      LogInterceptor(requestBody: true, responseBody: true),
    ]);
  }

  /// Provides access to the configured Dio instance for making API calls.
  Dio get dio => _dio;
}
