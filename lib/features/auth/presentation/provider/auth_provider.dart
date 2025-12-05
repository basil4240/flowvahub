import 'package:flutter/foundation.dart';
// import 'package:dartz/dartz.dart'; // Removed
// import 'package:flowvahub/core/error/failures.dart'; // Removed
import 'package:flowvahub/core/error/exceptions.dart'; // Added
import 'package:flowvahub/features/auth/domain/usecases/signup.dart';
import 'package:flowvahub/features/auth/domain/usecases/login.dart';
import 'package:flowvahub/features/auth/domain/usecases/forgot_password.dart';
// import 'package:flowvahub/core/di/injection_container.dart'; // Not needed if AuthLocalDataSource is removed

class AuthProvider with ChangeNotifier {
  final Login loginUseCase;
  final SignUp signUpUseCase;
  final ForgotPassword forgotPasswordUseCase;

  AuthProvider({
    required this.loginUseCase,
    required this.signUpUseCase,
    required this.forgotPasswordUseCase,
  });

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _error;
  String? get error => _error;

  bool _isAuthenticated = false;
  bool get isAuthenticated => _isAuthenticated;

  String? _userEmail;
  String? get userEmail => _userEmail;

  String? _currentUserId;
  String? get currentUserId => _currentUserId;

  Future<void> login(String email, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    final result = await loginUseCase(LoginParams(email: email, password: password));

    result.fold(
      (exception) { // Changed to exception
        _error = exception.message;
        _isAuthenticated = false;
        _currentUserId = null;
      },
      (authEntity) {
        _userEmail = authEntity.user.email;
        _currentUserId = authEntity.user.id;
        _isAuthenticated = true;
      },
    );

    _isLoading = false;
    notifyListeners();
  }

  Future<void> signUp(String email, String password) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    final result = await signUpUseCase(SignUpParams(email: email, password: password));

    result.fold(
      (exception) { // Changed to exception
        _error = exception.message;
        _isAuthenticated = false;
        _currentUserId = null;
      },
      (authEntity) {
        // After signup, user might not be immediately authenticated and accessToken might be null.
        // The primary goal of signup is to create the user, verification often follows.
        // We set isAuthenticated to false because email verification is typically required.
        _userEmail = authEntity.user.email;
        _currentUserId = authEntity.user.id;
        _isAuthenticated = false; // User needs to verify email, so not authenticated yet.
      },
    );

    _isLoading = false;
    notifyListeners();
  }

  Future<void> forgotPassword(String email) async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    final result = await forgotPasswordUseCase(ForgotPasswordParams(email: email));

    result.fold(
      (exception) { // Changed to exception
        _error = exception.message;
      },
      (_) {
        // Password reset instructions sent successfully, no AuthEntity returned
        _error = null; // Clear any previous error
      },
    );

    _isLoading = false;
    notifyListeners();
  }


  Future<void> logout() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    // No local storage to clear for now as per user's instruction
    _isAuthenticated = false;
    _userEmail = null;
    _currentUserId = null;

    _isLoading = false;
    notifyListeners();
  }

  // A method to check initial authentication status, for use in router redirect
  Future<void> checkAuthenticationStatus() async {
    // No local storage to check for now as per user's instruction
    _isAuthenticated = false;
    _currentUserId = null;
    _userEmail = null;
    notifyListeners();
  }
}
