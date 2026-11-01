enum EmailError { empty, invalidFormat }

enum PasswordError { empty, tooShort }

const int minPasswordLength = 6;

final RegExp _emailPattern = RegExp(
  r"^[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9][a-zA-Z0-9-]{0,62}\.)+[a-zA-Z]{2,}$",
);

/// The email is trimmed before validation.
EmailError? validateEmail(String email) {
  final value = email.trim();
  if (value.isEmpty) return EmailError.empty;
  if (!_emailPattern.hasMatch(value)) return EmailError.invalidFormat;
  return null;
}

/// Login only requires a non-empty password so existing accounts are never locked out.
PasswordError? validateLoginPassword(String password) =>
    password.isEmpty ? PasswordError.empty : null;

/// Sign-up rule. The password is not trimmed; its length is counted as typed.
PasswordError? validatePassword(String password) {
  if (password.isEmpty) return PasswordError.empty;
  if (password.length < minPasswordLength) return PasswordError.tooShort;
  return null;
}
