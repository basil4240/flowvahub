import 'package:dio/dio.dart';
import 'package:flowvahub/core/network/api_client.dart';
import 'package:flowvahub/core/rest_api_clients/auth_api_service/auth_api_service.dart';
import 'package:flowvahub/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:flowvahub/features/auth/data/repositories_impl/auth_repository_impl.dart';
import 'package:flowvahub/features/auth/domain/repositories/auth_repository.dart';
import 'package:flowvahub/features/auth/domain/usecases/forgot_password.dart';
import 'package:flowvahub/features/auth/domain/usecases/login.dart';
import 'package:flowvahub/features/auth/domain/usecases/signup.dart';
import 'package:flowvahub/features/auth/presentation/provider/auth_provider.dart';
import 'package:flowvahub/features/home/data/datasources/home_remote_data_source.dart'; // New import
import 'package:flowvahub/features/home/data/repositories_impl/home_repository_impl.dart'; // New import
import 'package:flowvahub/features/home/domain/repositories/home_repository.dart'; // New import
import 'package:flowvahub/features/home/domain/usecases/get_user_details.dart'; // New import
import 'package:flowvahub/features/home/presentation/provider/home_provider.dart'; // New import
import 'package:get_it/get_it.dart';
// import 'package:shared_preferences/shared_preferences.dart'; // REMOVED

// Service Locator instance
final sl = GetIt.instance;

/// Manages dependency injection for the application.
class InjectionContainer {
  /// Initializes and registers all necessary dependencies.
  static Future<void> init() async {
    // === External ===
    // SharedPreferences - REMOVED

    // === Features ===
    _initAuth();
    _initHome(); // New call

    // === Core ===
    sl.registerLazySingleton(() => Dio());
    sl.registerLazySingleton(() => ApiClient(sl()));
    sl.registerLazySingleton(() => AuthApiService(sl<ApiClient>().dio));
  }

  /// Registers all dependencies related to the Auth feature.
  static void _initAuth() {
    // Providers
    sl.registerLazySingleton<AuthProvider>(
      () => AuthProvider(
        loginUseCase: sl(),
        signUpUseCase: sl(),
        forgotPasswordUseCase: sl(),
      ),
    );

    // Use Cases
    sl.registerFactory(() => SignUp(sl()));
    sl.registerFactory(() => Login(sl()));
    sl.registerFactory(() => ForgotPassword(sl()));

    // Repository
    sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(
        remoteDataSource: sl(),
      ),
    );

    // Data Sources
    sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(sl()),
    );
  }

  /// Registers all dependencies related to the Home feature.
  static void _initHome() {
    // Providers
    sl.registerLazySingleton<HomeProvider>(
      () => HomeProvider(getUserDetailsUseCase: sl()),
    );

    // Use Cases
    sl.registerFactory(() => GetUserDetails(sl()));

    // Repository
    sl.registerLazySingleton<HomeRepository>(
      () => HomeRepositoryImpl(remoteDataSource: sl()),
    );

    // Data Sources
    sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(sl()),
    );
  }
}
