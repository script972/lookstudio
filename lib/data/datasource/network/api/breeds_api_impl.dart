import 'package:solution_starter/data/datasource/network/api/breeds_api.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/network_request_body.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/request.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';
import 'package:solution_starter/data/datasource/network/services/network_service/network_service.dart';
import 'package:solution_starter/data/model/breeds_model.dart';

class BreedsApiImpl implements BreedsApi {
  BreedsApiImpl(NetworkService networkService) : _networkService = networkService;

  static const String _apiPath = '/api';
  static const String _breedsPath = '$_apiPath/breeds/list/all';

  final NetworkService _networkService;

  @override
  Future<NetworkResponse<BreedsModel>> getBreeds() async => await _networkService.request(
    const NetworkRequest(
      method: NetworkRequestType.get,
      path: _breedsPath,
      data: NetworkRequestBody.empty(),
    ),
        (response) {
      return BreedsModel.fromJson(response);
    },
  );
}