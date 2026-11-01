import 'package:flutter_test/flutter_test.dart';
import 'package:lookstudio/data/datasource/network/exchange_models/action_errors.dart';
import 'package:lookstudio/domain/model/auth_failure.dart';
import 'package:lookstudio/domain/model/auth_validators.dart';
import 'package:lookstudio/presentation/sign_up_screen/cubit/sign_up_cubit.dart';

import 'fake_auth_repository.dart';

void main() {
  late FakeAuthRepository repo;
  late SignUpCubit cubit;
  late List<SignUpState> states;

  setUp(() {
    repo = FakeAuthRepository();
    cubit = SignUpCubit(repo);
    states = [];
    cubit.stream.listen(states.add);
  });

  tearDown(() => cubit.close());

  test('invalid input emits validationError and skips the repository',
      () async {
    await cubit.signUp(email: 'nope', password: '');
    await pumpEventQueue();
    expect(states, [
      const SignUpState.validationError(
          emailError: EmailError.invalidFormat,
          passwordError: PasswordError.empty),
    ]);
    expect(repo.calls, 0);
  });

  test('success emits loading -> signUpped and saves token and user', () async {
    await cubit.signUp(email: 'a@b.com', password: '123456');
    await pumpEventQueue();
    expect(
        states, [const SignUpState.loading(), const SignUpState.signUpped()]);
    expect(repo.savedToken, 'tok');
    expect(repo.addedUsers, hasLength(1));
  });

  const codes = {
    'email-already-in-use': AuthFailureType.emailInUse,
    'weak-password': AuthFailureType.weakPassword,
    'invalid-email': AuthFailureType.invalidEmail,
    'network-request-failed': AuthFailureType.network,
    'other': AuthFailureType.unknown,
  };
  codes.forEach((code, type) {
    test('$code emits loading -> authError($type)', () async {
      repo.failWith(code);
      await cubit.signUp(email: 'a@b.com', password: '123456');
      await pumpEventQueue();
      expect(
          states, [const SignUpState.loading(), SignUpState.authError(type)]);
    });
  });

  test('double tap while loading calls the repository once', () async {
    await Future.wait([
      cubit.signUp(email: 'a@b.com', password: '123456'),
      cubit.signUp(email: 'a@b.com', password: '123456'),
    ]);
    await pumpEventQueue();
    expect(repo.calls, 1);
  });

  test('google cancel is not an error', () async {
    repo.failWith(authCancelledCode);
    await cubit.googleLogin();
    await pumpEventQueue();
    expect(states, [const SignUpState.loading(), const SignUpState.initial()]);
  });
}
