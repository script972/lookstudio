import 'package:solution_starter/data/datasource/network/exchange_models/network_request_body.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/request.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';
import 'package:solution_starter/data/datasource/network/network_service.dart';
import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/data/model/login_response.dart';

abstract class AuthApi {
  Future<NetworkResponse<LoginResponse>> login({required LoginRequest loginRequest});
}

class AuthApiImpl extends AuthApi {
  AuthApiImpl({required NetworkService networkService}) : _networkService = networkService;
  final NetworkService _networkService;

  @override
  Future<NetworkResponse<LoginResponse>> login({required LoginRequest loginRequest}) async =>
      await _networkService.request<LoginResponse>(
          const NetworkRequest(
            method: NetworkRequestType.get,
            path: '/login',
            data: NetworkRequestBody.empty(),
          ), (response) {
        return LoginResponse.fromJson(response);
      });
}
