import 'package:solution_starter/data/datasource/network/exchange_models/request.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';
import 'package:solution_starter/data/datasource/network/network_service.dart';
import 'package:solution_starter/data/model/breeds_model.dart';

abstract class BreedsApi {
  factory BreedsApi(NetworkService networkService) = BreedsApiImpl;

  Future<NetworkResponse<BreedsModel>> getBreeds();

  static const String baseUrl = "https://dog.ceo";
  static const String _apiPath = '/api';
  static const String _breedsPath = '$_apiPath/breeds/list/all';
}

class BreedsApiImpl implements BreedsApi {
  BreedsApiImpl(NetworkService networkService) : _networkService = networkService..baseUrl = BreedsApi.baseUrl;

  final NetworkService _networkService;

  @override
  Future<NetworkResponse<BreedsModel>> getBreeds() async => await _networkService.request(
    const NetworkRequest(
      method: NetworkRequestType.get,
      path: BreedsApi._breedsPath,
      data: null,
    ),
        (response) {
      return BreedsModel.fromJson(response);
    },
  );
}
