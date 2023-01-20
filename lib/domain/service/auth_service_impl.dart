import 'package:solution_starter/data/model/login_request.dart';
import 'package:solution_starter/data/model/login_response.dart';
import 'package:solution_starter/domain/service/auth_service.dart';
import 'package:solution_starter/network/network_request.dart';
import 'package:solution_starter/network/network_request_body.dart';
import 'package:solution_starter/network/network_response.dart';
import 'package:solution_starter/network/network_service.dart';

class AuthServiceImpl extends AuthService {
  final NetworkService _networkService;

  AuthServiceImpl({required NetworkService networkService}) : _networkService = networkService;

  @override
  Future<NetworkResponse<LoginResponse>> login({required LoginRequest loginRequest}) async =>
      await _networkService.execute<LoginResponse>(
        const NetworkRequest(
          type: NetworkRequestType.GET,
          path: '/login',
          data: NetworkRequestBody.empty(),
          /*queryParams: {
    'email': email,
    'password': lng,
  }*/
        ),
        (data) => LoginResponse.fromJson(data),
      );

  /* @override
  Future<NetworkResponse<LoginResponse>> login({required LoginRequest loginRequest}) async {
    await _networkService.execute<LoginResponse>(
      const NetworkRequest(
        type: NetworkRequestType.GET,
        path: '/taas-evg-cnms/sites',
        data: NetworkRequestBody.empty(),
        */ /*queryParams: {
              'email': email,
              'password': lng,
            }*/ /*
      ),
      (data) => LoginResponse.fromJson(data),
    );
  }*/
}
