import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/use_case.dart';
import '../../../domain/model/breed_info.dart';
import '../../../domain/use_cases/breeds_use_case.dart';

part 'breeds_event.dart';

part 'breeds_state.dart';

part 'breeds_bloc.freezed.dart';

class BreedsBloc extends Bloc<BreedsEvent, BreedsState> {
  BreedsBloc(this._useCase) : super(const BreedsState.initial()) {
    on<BreedsEvent>((event, emit) async => await _getContracts(emit));
    on<ShowInfoEvent>((event, emit) => emit(BreedsState.showInfo(breedInfo: event.breedInfo, fetchedDogs: breeds)));
    on<RefreshEvent>((event, emit) => loadData(emit));
    on<LoadingEvent>((event, emit) => refreshData(emit));
  }

  int _currentIndex = 0;
  bool _isLastPage = false;
  final int _pageSize = 5;

  Future<void> _getContracts(Emitter<BreedsState> emit, {bool refresh = false}) async {
    if (refresh) {
      emit(const BreedsState.loading());
    }

    if (refresh) {
      _currentIndex = 0;
      breeds = [];
      _isLastPage = false;
    }

    if (_isLastPage) {
      emit(BreedsState.loaded(fetchedDogs: breeds));
      return;
    }

    final results = await _useCase.execute(NoParams());
    results.when(
      success: (data) {
        if (data.breedList.isEmpty) {
          _isLastPage = true;
        } else {
          breeds.clear();
          breeds.addAll(data.breedList);
          _currentIndex = breeds.length;
        }
        emit(BreedsState.loaded(fetchedDogs: data.breedList));
      },
      error: (error) => emit(BreedsState.error(exception: error, fetchedDogs: breeds)),
    );
  }

  Future<void> refreshData(Emitter<BreedsState> emit) async => await _getContracts(emit, refresh: true);

  Future<void> loadData(
    Emitter<BreedsState> emit,
  ) async =>
      await _getContracts(emit);

  final BreedsUseCase _useCase;
  List<BreedInfo> breeds = [];
}
