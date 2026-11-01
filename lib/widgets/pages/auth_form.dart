import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../domain/model/auth_failure.dart';
import '../../domain/model/auth_validators.dart';
import '../../generated/l10n.dart';
import '../../utils/auth_texts.dart';
import '../molecules/button_item.dart';
import '../molecules/input_item.dart';
import '../organisms/progress.dart';
import '../tokens/spacing.dart';

/// Email + password form shared by the login and sign-up screens.
///
/// The form stays mounted while [isLoading] so the entered email is preserved
/// when a request fails.
class AuthForm extends StatefulWidget {
  const AuthForm({
    super.key,
    required this.submitText,
    required this.onSubmit,
    required this.footer,
    this.isLoading = false,
    this.emailError,
    this.passwordError,
    this.failure,
    this.extra,
  });

  final String submitText;
  final void Function(String email, String password) onSubmit;
  final Widget footer;
  final bool isLoading;
  final EmailError? emailError;
  final PasswordError? passwordError;
  final AuthFailureType? failure;
  final Widget? extra;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  String _email = '';
  String _password = '';

  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _emailFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }

  void _submit() {
    if (widget.isLoading) return;
    widget.onSubmit(_email, _password);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final failure = widget.failure;
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(Spacing.defaultPadding * 2),
            child: AutofillGroup(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(S.of(context).email),
                  InputItem(
                    focusNode: _emailFocusNode,
                    hintText: S.of(context).email,
                    keyboardType: TextInputType.emailAddress,
                    errorText: emailErrorText(context, widget.emailError),
                    onEditingComplete: _passwordFocusNode.requestFocus,
                    onChanged: (value) => _email = value,
                    autofillHints: const [AutofillHints.email],
                  ),
                  Text(S.of(context).password),
                  InputItem(
                    focusNode: _passwordFocusNode,
                    hintText: S.of(context).password,
                    obscureText: true,
                    textInputAction: TextInputAction.done,
                    errorText: passwordErrorText(context, widget.passwordError),
                    onFieldSubmitted: (_) => _submit(),
                    onChanged: (value) => _password = value,
                    autofillHints: const [AutofillHints.password],
                  ),
                  if (failure != null) ...[
                    Text(
                      authFailureText(context, failure),
                      style: TextStyle(color: theme.colorScheme.error),
                    ),
                    if (failure == AuthFailureType.unknown)
                      TextButton(onPressed: _submit, child: Text(S.of(context).retry)),
                  ],
                  const SizedBox(height: Spacing.defaultPadding * 2),
                  SizedBox(
                    width: double.infinity,
                    child: ButtonItem(
                      context,
                      text: widget.submitText,
                      onPressed: _submit,
                      buttonType: ButtonType.L,
                    ),
                  ),
                  if (widget.extra != null) ...[
                    const SizedBox(height: Spacing.defaultPadding * 2),
                    Center(child: widget.extra),
                  ],
                  const SizedBox(height: Spacing.defaultPadding * 2),
                  Center(child: widget.footer),
                ],
              ),
            ),
          ),
          if (widget.isLoading)
            const Positioned.fill(
              child: AbsorbPointer(child: Center(child: CircleProgress())),
            ),
        ],
      ),
    );
  }
}
