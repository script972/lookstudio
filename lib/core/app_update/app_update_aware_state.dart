@freezed
class AppUpdateAwareState with _$AppUpdateAwareState {
  const factory AppUpdateAwareState.initial() = Initial;
  const factory AppUpdateAwareState.hardUpdateRequired() = HardUpdateRequired;
  const factory AppUpdateAwareState.softUpdateAvailable() = SoftUpdateAvailable;
}
