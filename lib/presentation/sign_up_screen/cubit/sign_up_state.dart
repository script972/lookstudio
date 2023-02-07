part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {

  const factory SignUpState.initial() = _InitialState;

  const factory SignUpState.loading() = _LoadingState;

  const factory SignUpState.signUpped() = _SuccessfullySignUpState;

  const factory SignUpState.error({final Object? exception}) = _ErrorState;
}