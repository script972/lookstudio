import 'package:solution_starter/data/datasource/network/api/breeds/breeds_api_interface.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/request.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';
import 'package:solution_starter/data/datasource/network/services/network_service/network_service_interface.dart';
import 'package:solution_starter/data/model/breeds_model.dart';

class BreedsApi implements IBreedsApi {
  BreedsApi(INetworkService networkService) : _networkService = networkService;

  static const String _apiPath = '/api';
  static const String _breedsPath = '$_apiPath/breeds/list/all';

  final INetworkService _networkService;

  @override
  Future<NetworkResponse<BreedsModel>> getBreeds() async => await _networkService.request(
        const NetworkRequest(
          method: NetworkRequestType.get,
          path: _breedsPath,
        ),
        onParse: (response) => BreedsModel.fromJson(response.data),
      );
}
