import '../../domain/model/auth_failure.dart';
import '../datasource/network/exchange_models/action_errors.dart';

AuthFailureType mapAuthError(Object error) {
  if (error is ConnectionError) return AuthFailureType.network;
  if (error is UnauthorizedError) {
    switch (error.code) {
      case 'wrong-password':
      case 'invalid-credential':
        return AuthFailureType.wrongCredentials;
      case 'user-not-found':
        return AuthFailureType.userNotFound;
      case 'email-already-in-use':
        return AuthFailureType.emailInUse;
      case 'weak-password':
        return AuthFailureType.weakPassword;
      case 'invalid-email':
        return AuthFailureType.invalidEmail;
      case 'user-disabled':
        return AuthFailureType.userDisabled;
      case 'network-request-failed':
        return AuthFailureType.network;
      case 'too-many-requests':
        return AuthFailureType.tooManyRequests;
      case authCancelledCode:
        return AuthFailureType.cancelled;
    }
  }
  return AuthFailureType.unknown;
}
