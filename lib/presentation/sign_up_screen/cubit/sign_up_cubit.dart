import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solution_starter/core/cubit.dart';
import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/domain/use_cases/sign_up_use_case.dart';

part 'sign_up_state.dart';

part 'sign_up_cubit.freezed.dart';

class SignUpCubit extends Cubit<SignUpState> with CommonErrorsHandler<SignUpState> {
  SignUpCubit(this._useCase) : super(const SignUpState.initial());

  final SignUpUseCase _useCase;

  void signUp({
    required String username,
    required String password,
  }) async {
    final response = await _useCase.execute(LoginRequest(email: username, password: password));
    response.maybeWhen(
      success: (data) => emit(const SignUpState.signUpped()),
      error: (error) => handleError,
      orElse: () {},
    );
  }
}
