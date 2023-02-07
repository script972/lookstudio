import 'package:solution_starter/core/bloc.dart';
import 'package:solution_starter/core/use_case.dart';
import 'package:solution_starter/domain/entities/breed_info.dart';
import 'package:solution_starter/domain/use_cases/breeds_use_case.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';

part 'home_state.dart';

part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> with CommonErrorsHandler<HomeEvent, HomeState> {
  HomeBloc(this._useCase) : super(const HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      emit(const HomeState.loading());
      final results = await _useCase.execute(NoParams());
      results.when(
        success: (data) => emit(HomeState.loaded(fetchedDogs: data.breedList)),
        error: (error) => handleError,
      );
    });
    on<ShowInfoEvent>((event, emit) => emit(HomeState.showInfo(breedInfo: event.breedInfo)));
  }

  final BreedsUseCase _useCase;
}
