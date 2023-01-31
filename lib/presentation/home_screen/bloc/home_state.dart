part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _InitialState;

  const factory HomeState.loading() = _LoadingState;

  const factory HomeState.loaded({required List<BreedInfo> fetchedDogs}) = _LoadedState;

  const factory HomeState.showInfo({required BreedInfo breedInfo}) = _ShowInfo;

  const factory HomeState.error({final Object? exception}) = _ErrorState;
}
