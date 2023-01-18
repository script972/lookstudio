import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/app_update/app_update_aware_state.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:upgrader/upgrader.dart';
import 'package:version/version.dart';

class AppUpdateAwareCubit extends Cubit<AppUpdateAwareState> {
  final Logger _logger = getLogger('AppUpdateAwareCubit');

  AppUpdateAwareCubit({required Upgrader upgrader, required FirebaseRemoteConfig firebaseRemoteConfig})
      : _upgrader = upgrader,
        _firebaseRemoteConfig = firebaseRemoteConfig,
        super(const AppUpdateAwareState.initial());

  final Upgrader _upgrader;
  final FirebaseRemoteConfig _firebaseRemoteConfig;

  // Init
  Future<void> check() async {
    _logger.i('in check()');

    try {
      await _upgrader.initialize();

      // Get minimum supported version
      final Version minSupportedVersion = Version.parse(_firebaseRemoteConfig.getString('min_supported_version'));
      _logger.i('minSupportedVersion: $minSupportedVersion');
      // Get current version
      final Version currentVersion = Version.parse(_upgrader.currentInstalledVersion()!);
      _logger.i('currentVersion: $currentVersion');

      // Check for hard update
      if (minSupportedVersion > currentVersion) {
        _logger.i('hard update required!');

        emit(const AppUpdateAwareState.hardUpdateRequired());

        return;
      }

      // Check for soft update
      _logger.i('check for soft update');

      if (_upgrader.isUpdateAvailable()) {
        _logger.i('hard update available!');

        emit(const AppUpdateAwareState.softUpdateAvailable());
      }
    } catch (e, stack) {
      _logger.i('error: $e, stacktrace: $stack');
      // Do nothing. Initial state should just stay and that's OK
    }
  }

  // Confirm message showed
  Future<void> confirmUserNotified() async {
    _logger.i('in confirmUserNotified()');

    emit(const AppUpdateAwareState.initial());
  }
}
