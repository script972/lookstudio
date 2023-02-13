import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';
import 'package:solution_starter/data/datasource/network/services/network_service/network_service.dart';
import 'package:solution_starter/data/model/breeds_model.dart';

abstract class BreedsApi {
  BreedsApi(NetworkService networkService);

  Future<NetworkResponse<BreedsModel>> getBreeds();

}

