import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../../navigation/app_router.dart';
import '../../widgets/molecules/not_have_account.dart';
import '../../widgets/pages/auth_form.dart';
import 'bloc/login_cubit.dart';

class LoginLayout extends StatelessWidget {
  const LoginLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).loginTitle),
          ),
          body: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state is SuccessfullyLogin) {
                TextInput.finishAutofillContext();
                context.router.replace(const HomeRoute());
              }
            },
            builder: (context, state) => AuthForm(
              submitText: S.of(context).login,
              isLoading: state is Loading,
              emailError: state is ValidationError ? state.emailError : null,
              passwordError: state is ValidationError ? state.passwordError : null,
              failure: state is AuthError ? state.type : null,
              onSubmit: (email, password) =>
                  context.read<LoginCubit>().login(email: email, password: password),
              footer: const NotHaveAccount(),
            ),
          ),
        ),
      ),
    );
  }
}
