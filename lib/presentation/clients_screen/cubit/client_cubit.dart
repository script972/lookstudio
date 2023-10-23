import 'dart:math';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/domain/entities/user.dart';
import 'package:solution_starter/domain/repository/auth_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_screen_state.dart';

part 'client_cubit.freezed.dart';

class ClientCubit extends Cubit<ClientScreenState> {
  ClientCubit({required this.repository}) : super(const ClientScreenState.initial()) {
    fetchClients();
  }

  List<User> tempUsers = [];
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
    await repository.addUser(User(id: id, loginDate: DateTime.now()));
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
