import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:value_provider/value_provider.dart';
import 'package:lookstudio/generated/l10n.dart';
import 'package:lookstudio/presentation/login_screen/bloc/login_cubit.dart';
import 'package:lookstudio/widgets/pages/auth_form.dart';

import 'fake_auth_repository.dart';

void main() {
  testWidgets(
      'tapping Login with empty fields shows both errors and sends no request',
      (tester) async {
    final repo = FakeAuthRepository();
    final cubit = LoginCubit(repository: repo);
    addTearDown(cubit.close);

    await tester.pumpWidget(
      ValueProvider<ThemeMode, ThemeMode>(
        shouldNotify: (a, b) => a != b,
        future: Future.value(ThemeMode.light),
        initValue: ThemeMode.light,
        builder: (_, __) => MaterialApp(
          localizationsDelegates: const [S.delegate],
          supportedLocales: S.delegate.supportedLocales,
          home: Scaffold(
            body: BlocBuilder<LoginCubit, LoginState>(
              bloc: cubit,
              builder: (context, state) => AuthForm(
                submitText: 'Login',
                emailError: state is ValidationError ? state.emailError : null,
                passwordError:
                    state is ValidationError ? state.passwordError : null,
                onSubmit: (e, p) => cubit.login(email: e, password: p),
                footer: const SizedBox(),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle();

    expect(find.text('Email should not be empty'), findsOneWidget);
    expect(find.text('Password should not be empty'), findsOneWidget);
    expect(repo.calls, 0);
  });
}
