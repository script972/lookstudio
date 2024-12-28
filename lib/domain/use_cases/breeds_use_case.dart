

import '../../core/use_case.dart';
import '../model/breeds.dart';
import '../model/result.dart';
import '../repository/solution_repository_interface.dart';

class BreedsUseCase implements UseCase<Result<Breeds>, NoParams> {
  BreedsUseCase(this.repository);

  final ISolutionRepository repository;

  @override
  Future<Result<Breeds>> execute(NoParams noParams) async => await repository.fetchBreeds();
}
