import 'package:solution_starter/domain/entities/breeds.dart';
import 'package:solution_starter/domain/entities/result.dart';

abstract class BreedsRepository {
  Future<Result<Breeds>> fetchBreeds();
}
