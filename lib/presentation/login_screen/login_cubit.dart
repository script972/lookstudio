import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/domain/repository/auth_repository.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final Logger logger = getLogger('ChargeListCubit');
  final AuthRepository authRepository;

  LoginCubit({
    required this.authRepository,
  }) : super(const LoginState.loading());

  void init() async {
    logger.i('charge list init()');

    //var locationResponse = authRepository.getLocationsList(lat: 46.0, lng: 32.9);
    emit(LoginState.dataUpdated(1));
  }
}
