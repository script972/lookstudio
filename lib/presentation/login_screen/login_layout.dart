import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../../navigation/app_router.dart';
import '../../widgets/organisms/progress.dart';
import '../../widgets/pages/login_success_layout.dart';
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
        // check to base scaffold
        child: Scaffold(
          appBar: AppBar(
            title: Text(S.of(context).paid),
          ),
          body: BlocConsumer<LoginCubit, LoginState>(
            listener: (context, state) {
              if (state == const LoginState.successfullyLogin()) {
                context.router.replace(const HomeRoute());
              }
            },
            buildWhen: (context, state) =>
                state != const LoginState.successfullyLogin(),
            builder: (context, state) => state.maybeWhen(
              loading: () => const Center(child: CircleProgress()),
              //success state with main content
              orElse: () => LoginSuccessLayout(loginState: state),
            ),
          ),
        ),
      ),
    );
  }
}


