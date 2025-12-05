import 'package:equatable/equatable.dart';

/// Base class for all custom exceptions in the application.
///
/// Implements [Exception] and uses [Equatable] for value-based equality.
sealed class AppException extends Equatable implements Exception {
  /// A user-friendly message describing the error.
  final String message;

  /// An optional status code, typically from an HTTP response.
  final int? statusCode;

  /// An optional list of more specific error messages, often from an API response.
  final List<String>? messages;

  /// The stack trace at the point where the exception was thrown.
  final StackTrace? stackTrace;

  const AppException({
    required this.message,
    this.statusCode,
    this.messages,
    this.stackTrace,
  });

  @override
  List<Object?> get props => [message, statusCode, messages, stackTrace];

  @override
  String toString() {
    return 'AppException(message: $message, statusCode: $statusCode, messages: $messages)';
  }
}

/// Thrown when an error occurs during a server interaction (e.g., 5xx status codes).
class ServerException extends AppException {
  const ServerException({
    required super.message,
    super.statusCode,
    super.messages,
    super.stackTrace,
  });
}

/// Thrown for client-side errors during an API call (e.g., 4xx status codes).
class ClientException extends AppException {
  const ClientException({
    required super.message,
    super.statusCode,
    super.messages,
    super.stackTrace,
  });
}

/// Thrown specifically for 401 Unauthorized errors.
class UnauthorisedException extends ClientException {
  const UnauthorisedException({
    required super.message,
    super.statusCode = 401,
    super.messages,
    super.stackTrace,
  });
}

/// Thrown specifically for 404 Not Found errors.
class NotFoundException extends ClientException {
  const NotFoundException({
    required super.message,
    super.statusCode = 404,
    super.messages,
    super.stackTrace,
  });
}

/// Thrown when a network connectivity issue is detected (e.g., no internet).
class NetworkException extends AppException {
  const NetworkException({
    super.message = 'No internet connection. Please check your network settings.',
    super.stackTrace,
  });
}

/// Thrown when there is an error related to local data storage.
class CacheException extends AppException {
  const CacheException({
    required super.message,
    super.stackTrace,
  });
}

/// Thrown for any other unexpected or unhandled errors.
class UnexpectedException extends AppException {
  const UnexpectedException({
    super.message = 'An unexpected error occurred. Please try again later.',
    super.stackTrace,
  });
}