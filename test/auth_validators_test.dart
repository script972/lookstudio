import 'package:flutter_test/flutter_test.dart';
import 'package:lookstudio/domain/model/auth_validators.dart';

void main() {
  group('validateEmail', () {
    test('empty and blank', () {
      expect(validateEmail(''), EmailError.empty);
      expect(validateEmail('   '), EmailError.empty);
    });

    test('invalid formats', () {
      for (final v in ['abc', 'a@', '@b.com', 'a@b', 'a b@c.com', 'a@b.c']) {
        expect(validateEmail(v), EmailError.invalidFormat, reason: v);
      }
    });

    test('valid, including surrounding whitespace', () {
      expect(validateEmail('user@example.com'), isNull);
      expect(validateEmail('  user.name+tag@mail.example.org '), isNull);
    });
  });

  test('validatePassword lengths', () {
    expect(validatePassword(''), PasswordError.empty);
    expect(validatePassword('12345'), PasswordError.tooShort);
    expect(validatePassword('123456'), isNull);
    expect(validatePassword('1234567'), isNull);
    expect(validatePassword('      '), isNull,
        reason: 'password is not trimmed');
  });
}
