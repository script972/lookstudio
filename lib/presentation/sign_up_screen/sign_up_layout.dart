import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../../navigation/app_router.dart';
import '../../widgets/molecules/already_have_account.dart';
import '../../widgets/molecules/button_item.dart';
import '../../widgets/molecules/input_item.dart';
import 'cubit/sign_up_cubit.dart';

class SignUpLayout extends StatefulWidget {
  const SignUpLayout({super.key});

  @override
  State<SignUpLayout> createState() => _SignUpLayoutState();
}

class _SignUpLayoutState extends State<SignUpLayout> {
  String _username = '';
  String _password = '';

  late FocusNode _usernameFocusNode;
  late FocusNode _passwordFocusNode;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    _usernameFocusNode = FocusNode();
    _passwordFocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    _usernameFocusNode.dispose();
    _passwordFocusNode.dispose();

    super.dispose();
  }

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
            title: Text(S.of(context).charge_registration),
          ),
          body: BlocConsumer<SignUpCubit, SignUpState>(
            // Listener
            listener: (context, state) {
              if (state == const SignUpState.signUpped()) {
                context.router.replace(const LoginRoute());
              }
            },
            // Builder
            builder: (context, state) => state.maybeWhen(
              loading: () => const SizedBox(),
              initial: _buildScreenContent,
              orElse: () => const SizedBox(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScreenContent() => Builder(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Form
              Flexible(
                flex: 1,
                child: _buildForm(),
              ),
            ],
          );
        },
      );

  Widget _buildForm() {
    return Builder(
      builder: (context) => Padding(
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
                      // errorText: _usernameError(state),
                      hintText: S.of(context).username,
                      onEditingComplete: () =>
                          _passwordFocusNode.requestFocus(),
                      value: _password,
                      onChanged: (String value) {
                        _username = value;
                        //BlocProvider.of<LoginCubit>(context).onFormFieldUpdated();
                      },
                      autofillHints: const [AutofillHints.email],
                    ),
                  ),
                  // Password title
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(S.of(context).password),
                  ),
                  // Password field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: InputItem(
                      //errorKey: LoginScreenKey.passwordErrorKey,
                      showErrorText: true,
                      obscureText: true,
                      //errorText: _passwordError(state),
                      focusNode: _passwordFocusNode,
                      hintText: S.of(context).password,
                      value: _password,
                      onChanged: (String value) {
                        _password = value;

                        //BlocProvider.of<LoginCubit>(context).onFormFieldUpdated();
                      },
                      autofillHints: const [AutofillHints.password],
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  // Sign In button
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    width: double.infinity,
                    child: ButtonItem(
                      context,
                      text: S.of(context).sign_up,
                      onPressed: () {
                        final form = _formKey.currentState;
                        if (form!.validate()) {
                          BlocProvider.of<SignUpCubit>(context).signUp(
                            username: _username,
                            password: _password,
                          );
                        }
                      },
                      buttonType: ButtonType.L,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  Center(
                    child: FloatingActionButton.extended(
                      onPressed: () {
                        BlocProvider.of<SignUpCubit>(context).googleLogin();
                      },
                      icon: const Icon(Icons.login),
                      label:  Text(S.of(context).sign_in_with_google),
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const AlreadyHaveAnAccountWidget(),
                  const Spacer(flex: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
