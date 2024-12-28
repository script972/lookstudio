import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../../presentation/login_screen/bloc/login_cubit.dart';
import '../molecules/button_item.dart';
import '../molecules/input_item.dart';
import '../molecules/not_have_account.dart';
import '../templates/form_validation.dart';

class LoginSuccessLayout extends StatefulWidget {
  const LoginSuccessLayout({super.key, required this.loginState});

  final LoginState loginState;

  @override
  State<LoginSuccessLayout> createState() => _LoginSuccessLayoutState();
}

class _LoginSuccessLayoutState extends State<LoginSuccessLayout> {

  var _username = '';
  var _password = '';

  final _formKey = GlobalKey<FormState>();

  final FocusNode _usernameFocusNode = FocusNode();
  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();
    super.dispose();
  }


  void onSignInButtonPressed() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      BlocProvider.of<LoginCubit>(context).login(
        username: _username,
        password: _password,
      );
    }
  }

  final spacer = const SizedBox(height: 16.0);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Form(
        key: _formKey,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: 500),
          child: AutofillGroup(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(flex: 1),
                // Username title
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(S.of(context).username),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InputItem(
                    showErrorText: false,
                    autofocus: true,
                    focusNode: _usernameFocusNode,
                    hintText: S.of(context).username,
                    errorText: FormValidation.usernameError(widget.loginState),
                    onEditingComplete: _passwordFocusNode.requestFocus,
                    value: _password,
                    onChanged: (String value) {
                      _username = value;
                    },
                    autofillHints: const [AutofillHints.email],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Text(S.of(context).password),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: InputItem(
                    showErrorText: true,
                    obscureText: true,
                    errorText: FormValidation.usernameError(widget.loginState),
                    focusNode: _passwordFocusNode,
                    hintText: S.of(context).password,
                    onFieldSubmitted: (_) => onSignInButtonPressed(),
                    validateFunction: (value, context) {
                      if (value == null || value.isEmpty) {
                        return S.of(context).passwordShouldntBeEmpty;
                      }
                      return null;
                    },
                    onEditingComplete: onSignInButtonPressed,
                    value: _password,
                    onChanged: (String value) => _password = value,
                    autofillHints: const [AutofillHints.password],
                  ),
                ),
                spacer,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  width: double.infinity,
                  child: ButtonItem(
                    context,
                    text: S.of(context).sign_in,
                    onPressed: onSignInButtonPressed,
                    buttonType: ButtonType.L,
                  ),
                ),
                spacer,
                const NotHaveAccount(),
                const Spacer(flex: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


