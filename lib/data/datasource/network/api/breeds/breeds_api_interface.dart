import '../../../../entity/breeds_model.dart';
import '../../exchange_models/response.dart';
import '../../services/network_service/network_service_interface.dart';

abstract interface class IBreedsApi {
  IBreedsApi(INetworkService networkService);

  Future<NetworkResponse<BreedsModel>> getBreeds();

}

