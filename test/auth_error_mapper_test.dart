import 'package:flutter_test/flutter_test.dart';
import 'package:lookstudio/data/datasource/network/exchange_models/action_errors.dart';
import 'package:lookstudio/data/mapper/auth_error_mapper.dart';
import 'package:lookstudio/domain/model/auth_failure.dart';

void main() {
  const expected = {
    'wrong-password': AuthFailureType.wrongCredentials,
    'invalid-credential': AuthFailureType.wrongCredentials,
    'user-not-found': AuthFailureType.userNotFound,
    'email-already-in-use': AuthFailureType.emailInUse,
    'weak-password': AuthFailureType.weakPassword,
    'invalid-email': AuthFailureType.invalidEmail,
    'user-disabled': AuthFailureType.userDisabled,
    'network-request-failed': AuthFailureType.network,
    'too-many-requests': AuthFailureType.tooManyRequests,
    authCancelledCode: AuthFailureType.cancelled,
  };

  expected.forEach((code, type) {
    test('$code -> $type', () {
      expect(mapAuthError(UnauthorizedError(error: 'e', code: code)), type);
    });
  });

  test('connection error', () {
    expect(mapAuthError(ConnectionError(error: 'e')), AuthFailureType.network);
  });

  test('unknown code and foreign errors', () {
    expect(mapAuthError(UnauthorizedError(error: 'e', code: 'boom')),
        AuthFailureType.unknown);
    expect(
        mapAuthError(UnauthorizedError(error: 'e')), AuthFailureType.unknown);
    expect(mapAuthError(UnexpectedError(error: 'e')), AuthFailureType.unknown);
    expect(mapAuthError(StateError('x')), AuthFailureType.unknown);
  });
}
