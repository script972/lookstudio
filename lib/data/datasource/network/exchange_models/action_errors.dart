import '../../../../core/failure.dart';

class SavingError extends StorageError{
  SavingError(super.error, {required super.boxName, required super.boxKey, this.data});

  final dynamic data;
}

class StorageError extends Failure {
  StorageError(super.error, {required this.boxName, required this.boxKey});

  final String boxKey;
  final String boxName;
}

class NetworkError extends Failure {
  NetworkError({required dynamic error, this.baseUrl, this.path, this.statusCode}) : super(error);
  final String? baseUrl;
  final String? path;
  final int? statusCode;

  @override
  String toString() => 'NetworkError{error: $error, baseUrl: $baseUrl, path: $path, statusCode: $statusCode}';
}

class ConnectionError extends NetworkError {
  ConnectionError({required super.error});
}

class UnauthorizedError extends NetworkError {
  UnauthorizedError({required super.error, this.code});

  /// `FirebaseAuthException.code`, when the failure came from Firebase Auth.
  final String? code;
}

class UnexpectedError extends NetworkError {
  UnexpectedError({required super.error});
}

/// `UnauthorizedError.code` used when the user dismissed a sign-in dialog.
const authCancelledCode = 'cancelled';
