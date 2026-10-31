import 'package:lookstudio/domain/model/result.dart';
import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/model/user_model.dart';
import '../../../domain/repository/auth_repository_interface.dart';

part 'client_screen_state.dart';

part 'client_cubit.freezed.dart';

class ClientCubit extends Cubit<ClientScreenState> {
  ClientCubit({required this.repository}) : super(const ClientScreenState.initial()) {
    fetchClients();
  }

  List<UserModel> tempUsers = [];
  final random = Random();

  void fetchClients() async {
    emit(const ClientScreenState.loading());
    final users = await repository.getSavedUsers();
    users.when(
      success: (data) {
        tempUsers = data;
        emit(ClientScreenState.loaded(tempUsers));
      },
      error: (error) => emit(ClientScreenState.error(exception: error)),
    );
  }

  void addClientToDb() async {
    emit(const ClientScreenState.loading());

    final id = String.fromCharCodes(List.generate(10, (index) => random.nextInt(33) + 89));
    await repository.addUser(UserModel(id: id, loginDate: DateTime.now()));
    final users = await repository.getSavedUsers();
    users.when(
      success: (data) {
        tempUsers = data;
        emit(ClientScreenState.loaded(tempUsers));
      },
      error: (error) => emit(ClientScreenState.error(exception: error)),
    );
  }

  void deleteUserFromDb() async {
    if (tempUsers.isEmpty) return;
    emit(const ClientScreenState.loading());
    await repository.removeUser(tempUsers.last);
    final users = await repository.getSavedUsers();
    users.when(
      success: (data) {
        tempUsers = data;
        emit(ClientScreenState.loaded(tempUsers));
      },
      error: (error) => emit(ClientScreenState.error(exception: error)),
    );
  }

  final IAuthRepository repository;
}
