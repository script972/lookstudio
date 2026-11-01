import 'package:flutter/widgets.dart';

import '../domain/model/auth_failure.dart';
import '../domain/model/auth_validators.dart';
import '../generated/l10n.dart';

String? emailErrorText(BuildContext context, EmailError? error) => switch (error) {
      EmailError.empty => S.of(context).emailShouldntBeEmpty,
      EmailError.invalidFormat => S.of(context).emailInvalid,
      null => null,
    };

String? passwordErrorText(BuildContext context, PasswordError? error) => switch (error) {
      PasswordError.empty => S.of(context).passwordShouldntBeEmpty,
      PasswordError.tooShort => S.of(context).passwordTooShort,
      null => null,
    };

String authFailureText(BuildContext context, AuthFailureType type) {
  final l10n = S.of(context);
  return switch (type) {
    AuthFailureType.wrongCredentials => l10n.authErrorWrongCredentials,
    AuthFailureType.userNotFound => l10n.authErrorUserNotFound,
    AuthFailureType.emailInUse => l10n.authErrorEmailInUse,
    AuthFailureType.weakPassword => l10n.passwordTooShort,
    AuthFailureType.invalidEmail => l10n.emailInvalid,
    AuthFailureType.userDisabled => l10n.authErrorUserDisabled,
    AuthFailureType.network => l10n.authErrorNetwork,
    AuthFailureType.tooManyRequests => l10n.authErrorTooManyRequests,
    AuthFailureType.cancelled || AuthFailureType.unknown => l10n.authErrorUnknown,
  };
}
