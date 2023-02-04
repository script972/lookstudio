import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/presentation/login_screen/bloc/login_cubit.dart';
import 'package:solution_starter/widgets/molecules/button_item.dart';
import 'package:solution_starter/widgets/molecules/input_item.dart';

class LoginLayout extends StatefulWidget {
  const LoginLayout({Key? key}) : super(key: key);

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
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Jaguar '),
          ),
          body: BlocConsumer<LoginCubit, LoginState>(
            // Listener
            listener: (context, state) {},
            // Builder
            builder: (context, state) => state.maybeWhen(
              loading: () => SizedBox(),
              dataUpdated: (data) => _buildScreenContent(data),
              orElse: () => SizedBox(),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildScreenContent(int data) => Builder(
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Form
              Flexible(
                flex: 1,
                child: _buildForm(data),
              ),
            ],
          );
        },
      );

  Widget _buildForm(int data) {
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
                          child: Text(
                            'User name',
                          ),
                        ),

                        // Username field
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: InputItem(
                            showErrorText: false,
                            autofocus: true,
                            focusNode: _usernameFocusNode,
                            // errorText: _usernameError(state),
                            hintText: 'User name',
                            onEditingComplete: () => _passwordFocusNode.requestFocus(),
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
                          child: Text(
                            'Password',
                          ),
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
                            hintText: 'Password',
                            onFieldSubmitted: (_) {
                              /*BlocProvider.of<LoginScreenCubit>(context).onLogin(
                                username: _username,
                                password: _password,
                              );*/
                            },
                            /*
                            TODO
                            validateFunction: (_, __) =>
                                state.whenOrNull<String?>(fieldIsEmptyError: (_, isPasswordEmpty) {
                              if (isPasswordEmpty) {
                                return 'Password should not be empty';
                              }
                              return null;
                            }),*/
                            onEditingComplete: () {
                              /* BlocProvider.of<LoginCubit>(context).onLogin(
                                username: _username,
                                password: _password,
                              );*/
                            },
                            value: _password,
                            onChanged: (String value) {
                              _password = value;

                              //BlocProvider.of<LoginCubit>(context).onFormFieldUpdated();
                            },
                            autofillHints: const [AutofillHints.password],
                            // hideSvgModel: SvgHideModel(
                            //   svgPathHide: 'assets/ic_password.svg',
                            //   svgPathShow: 'assets/ic_password_show.svg',
                            // ),
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
                            text: 'Sign in',
                            onPressed: () {
                              //context.router.push(const HomeRoute());
                              final form = _formKey.currentState;
                              if (form!.validate()) {
                                /*BlocProvider.of<LoginCubit>(context).onLogin(
                                  username: _username,
                                  password: _password,
                                );*/
                              }
                            },
                            buttonType: ButtonType.L,
                          ),
                        ),
                        const Spacer(flex: 5),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}
