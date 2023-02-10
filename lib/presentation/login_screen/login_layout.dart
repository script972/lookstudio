import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/generated/l10n.dart';
import 'package:solution_starter/navigation/app_router.dart';
import 'package:solution_starter/presentation/login_screen/bloc/login_cubit.dart';
import 'package:solution_starter/widgets/molecules/button_item.dart';
import 'package:solution_starter/widgets/molecules/input_item.dart';
import 'package:solution_starter/widgets/molecules/not_have_account.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({super.key});

  @override
  State<LoginLayout> createState() => _LoginLayoutState();
}

class _LoginLayoutState extends State<LoginLayout> {
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
          appBar: AppBar(
            title: Text(S.of(context).paid),
          ),
          body: BlocConsumer<LoginCubit, LoginState>(
            // Listener
            listener: (context, state) {
              if (state == const LoginState.successfullyLogin()) {
                context.router.replace(const HomeRoute());
              }
            },
            buildWhen: (context, state) => state != const LoginState.successfullyLogin(),
            // Builder
            builder: (context, state) => state.maybeWhen(
              loading: () => const SizedBox(),
              //success state with main content
              orElse: () => _buildScreenContent(state),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScreenContent(LoginState state) => Builder(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Form
              Flexible(
                flex: 1,
                child: _buildForm(state),
              ),
            ],
          );
        },
      );

  Widget _buildForm(LoginState state) {
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
                  // Username field
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: InputItem(
                      showErrorText: false,
                      autofocus: true,
                      focusNode: _usernameFocusNode,
                      hintText: S.of(context).username,
                      errorText: _usernameError(state),
                      onEditingComplete: () => _passwordFocusNode.requestFocus(),
                      value: _password,
                      onChanged: (String value) {
                        _username = value;
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
                      showErrorText: true,
                      obscureText: true,
                      errorText: _passwordError(state),
                      focusNode: _passwordFocusNode,
                      hintText: S.of(context).password,
                      onFieldSubmitted: (_) {
                        _signInButton();
                      },
                      validateFunction: (value, context) {
                        if (value == null || value.isEmpty) {
                          return S.of(context).passwordShouldntBeEmpty;
                        }
                        return null;
                      },
                      onEditingComplete: _signInButton,
                      value: _password,
                      onChanged: (String value) {
                        _password = value;
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
                      text: S.of(context).sign_in,
                      onPressed: _signInButton,
                      buttonType: ButtonType.L,
                    ),
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  const NotHaveAccount(),
                  const Spacer(flex: 5),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? _usernameError(LoginState state) => state.whenOrNull<String?>(
        fieldIsEmptyError: (isUsernameEmpty, _) {
          if (isUsernameEmpty) return S.of(context).usernameShouldntBeEmpty;
          return null;
        },
      );

  String? _passwordError(LoginState state) => state.whenOrNull<String?>(
        fieldIsEmptyError: (_, isPasswordEmpty) {
          if (isPasswordEmpty) return S.of(context).passwordShouldntBeEmpty;
          return null;
        },
        wrongCredentialsError: () => S.of(context).incorrectUsernameOrPassword,
      );

  void _signInButton() {
    final form = _formKey.currentState;
    if (form!.validate()) {
      form.save();
      BlocProvider.of<LoginCubit>(context).login(
        username: _username,
        password: _password,
      );
    }
  }
}
