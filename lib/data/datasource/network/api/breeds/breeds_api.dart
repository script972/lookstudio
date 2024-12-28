import '../../../../entity/breeds_model.dart';
import '../../exchange_models/request.dart';
import '../../exchange_models/response.dart';
import '../../services/network_service/network_service_interface.dart';
import 'breeds_api_interface.dart';

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
