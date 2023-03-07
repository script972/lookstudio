import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this._repository) : super(const SignUpState.initial());

  final AuthRepository _repository;

  void signUp({
    required String username,
    required String password,
  }) async {
    final response = await _repository.register(email: username, password: password);
    response.maybeWhen(
      success: (data) => emit(const SignUpState.signUpped()),
      error: (error) => emit(SignUpState.error(exception: error)),
      orElse: () {},
    );
  }

  void googleLogin() async {
    final response = await _repository.googleLogin();
    response.maybeWhen(
      success: (data) => emit(const SignUpState.signUpped()),
      error: (error) => emit(SignUpState.error(exception: error)),
      orElse: () {},
    );
  }
}
