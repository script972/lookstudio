import 'package:solution_starter/core/use_case.dart';
import 'package:solution_starter/domain/entities/breeds.dart';
import 'package:solution_starter/domain/entities/result.dart';
import 'package:solution_starter/domain/repository/breeds_repository.dart';

class BreedsUseCase implements UseCase<Result<Breeds>, NoParams> {

  BreedsUseCase(this.repository);
  final BreedsRepository repository;

  @override
  Future<Result<Breeds>> execute(NoParams noParams) async => await repository.fetchBreeds();
}
