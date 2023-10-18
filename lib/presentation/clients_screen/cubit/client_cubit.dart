import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/domain/repository/auth_repository_interface.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'client_screen_state.dart';
part 'client_cubit.freezed.dart';



class ClientCubit extends Cubit<ClientScreenState> {
  ClientCubit({required this.repository})
      : super(const ClientScreenState.initial());


  void logOutUser() async {
     emit(const ClientScreenState.deleting());
     final user = await repository.getInsertUser();
     await repository.removeUser(user!);
     emit(const ClientScreenState.deleted());
  }

  final IAuthRepository repository;

}