import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../../navigation/app_router.dart';
import '../../widgets/molecules/already_have_account.dart';
import '../../widgets/pages/auth_form.dart';
import 'cubit/sign_up_cubit.dart';

class SignUpLayout extends StatelessWidget {
  const SignUpLayout({super.key});

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
            title: Text(S.of(context).registerTitle),
          ),
          body: BlocConsumer<SignUpCubit, SignUpState>(
            listener: (context, state) {
              if (state is SignUpSuccess) {
                TextInput.finishAutofillContext();
                context.router.replace(const HomeRoute());
              }
            },
            builder: (context, state) {
              return AuthForm(
                submitText: S.of(context).register,
                isLoading: state is SignUpLoading,
                emailError: state is SignUpValidationError ? state.emailError : null,
                passwordError: state is SignUpValidationError ? state.passwordError : null,
                failure: state is SignUpAuthError ? state.type : null,
                onSubmit: (email, password) =>
                    context.read<SignUpCubit>().signUp(email: email, password: password),
                extra: FloatingActionButton.extended(
                  onPressed: () => context.read<SignUpCubit>().googleLogin(),
                  icon: const Icon(Icons.login),
                  label: Text(S.of(context).sign_in_with_google),
                ),
                footer: const AlreadyHaveAnAccountWidget(),
              );
            },
          ),
        ),
      ),
    );
  }
}
