import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/form_validation.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';
import 'package:solution_starter/presentation/login_screen/bloc/login_cubit.dart';
import 'package:solution_starter/presentation/login_screen/login_success_layout.dart';
import 'package:solution_starter/widgets/molecules/button_item.dart';
import 'package:solution_starter/widgets/molecules/input_item.dart';
import 'package:solution_starter/widgets/molecules/not_have_account.dart';
import 'package:solution_starter/widgets/molecules/title_widget.dart';


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
          backgroundColor: Colors.white,
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
              loading: () => const SizedBox(),
              //success state with main content
              orElse: () => LoginSuccessLayout(loginState: state),
            ),
          ),
        ),
      ),
    );
  }
}


