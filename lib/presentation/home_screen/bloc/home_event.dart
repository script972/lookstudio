part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.loaded() = LoadedEvent;
  const factory HomeEvent.showInfo({required BreedInfo breedInfo}) = ShowInfoEvent;
}
