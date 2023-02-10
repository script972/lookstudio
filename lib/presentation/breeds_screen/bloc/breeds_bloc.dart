import 'package:solution_starter/core/bloc.dart';
import 'package:solution_starter/core/use_case.dart';
import 'package:solution_starter/domain/entities/breed_info.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'breeds_event.dart';

part 'breeds_state.dart';

part 'breeds_bloc.freezed.dart';

class BreedsBloc extends Bloc<BreedsEvent, BreedsState> with CommonErrorsHandler<BreedsEvent, BreedsState> {
  BreedsBloc(this._useCase) : super(const BreedsState.initial()) {
    on<BreedsEvent>((event, emit) async {
      emit(const BreedsState.loading());
      final results = await _useCase.execute(NoParams());
      results.when(
        success: (data) => emit(BreedsState.loaded(fetchedDogs: data.breedList)),
        error: (error) => handleError,
      );
    });
    on<ShowInfoEvent>((event, emit) => emit(BreedsState.showInfo(breedInfo: event.breedInfo)));
  }

  final BreedsUseCase _useCase;
}
