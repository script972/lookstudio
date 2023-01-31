import 'package:solution_starter/data/datasource/network/api/breeds_api.dart';
import 'package:solution_starter/data/model/breeds_model.dart';
import 'package:solution_starter/domain/entities/breeds.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/repository/breeds_repository.dart';

class BreedsRepositoryImpl implements BreedsRepository {
  BreedsRepositoryImpl(this.api);

  final BreedsApi api;

  @override
  Future<Result<Breeds>> fetchBreeds() async {
    final result = await api.getBreeds();
    return result.when(
      success: Result<BreedsModel>.success,
      failure: Result.error,
    );
  }
}
