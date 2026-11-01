import 'package:flutter_test/flutter_test.dart';
import 'package:lookstudio/domain/model/auth_failure.dart';
import 'package:lookstudio/domain/model/auth_validators.dart';
import 'package:lookstudio/presentation/login_screen/bloc/login_cubit.dart';

import 'fake_auth_repository.dart';

void main() {
  late FakeAuthRepository repo;
  late LoginCubit cubit;
  late List<LoginState> states;

  setUp(() {
    repo = FakeAuthRepository();
    cubit = LoginCubit(repository: repo);
    states = [];
    cubit.stream.listen(states.add);
  });

  tearDown(() => cubit.close());

  test('invalid input emits validationError and skips the repository',
      () async {
    await cubit.login(email: '', password: '123');
    await pumpEventQueue();
    expect(states, [
      const LoginState.validationError(
          emailError: EmailError.empty, passwordError: PasswordError.tooShort),
    ]);
    expect(repo.calls, 0);
  });

  test('success emits loading -> successfullyLogin and saves token and user',
      () async {
    await cubit.login(email: ' a@b.com ', password: '123456');
    await pumpEventQueue();
    expect(states,
        [const LoginState.loading(), const LoginState.successfullyLogin()]);
    expect(repo.savedToken, 'tok');
    expect(repo.addedUsers, hasLength(1));
  });

  const codes = {
    'invalid-credential': AuthFailureType.wrongCredentials,
    'user-not-found': AuthFailureType.userNotFound,
    'user-disabled': AuthFailureType.userDisabled,
    'network-request-failed': AuthFailureType.network,
    'too-many-requests': AuthFailureType.tooManyRequests,
    'other': AuthFailureType.unknown,
  };
  codes.forEach((code, type) {
    test('$code emits loading -> authError($type)', () async {
      repo.failWith(code);
      await cubit.login(email: 'a@b.com', password: '123456');
      await pumpEventQueue();
      expect(states, [const LoginState.loading(), LoginState.authError(type)]);
    });
  });

  test('double tap while loading calls the repository once', () async {
    final first = cubit.login(email: 'a@b.com', password: '123456');
    final second = cubit.login(email: 'a@b.com', password: '123456');
    await Future.wait([first, second]);
    await pumpEventQueue();
    expect(repo.calls, 1);
  });

  test('does not emit after close', () async {
    final pending = cubit.login(email: 'a@b.com', password: '123456');
    await cubit.close();
    await pending;
    await pumpEventQueue();
    expect(states, [const LoginState.loading()]);
  });
}
