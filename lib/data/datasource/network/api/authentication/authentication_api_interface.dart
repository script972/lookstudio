import 'package:lookstudio/domain/model/user_model.dart';

import '../../exchange_models/response.dart';

abstract interface class IAuthenticationApi {
  Future<NetworkResponse<UserModel>> register(
      String email,
      String password,
      );

  Future<NetworkResponse<UserModel>> login(
      String email,
      String password,
      );

  Future<NetworkResponse<UserModel>> googleLogin();
}