import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/action_errors.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';

/// Override [handleError], [onConnectionError], [onAuthorizationError], [onUnexpectedError] for your Cubit to change error handling
mixin CommonErrorsHandler<S> on Cubit<S> {
  void handleError(Failure error) {
    if (error is ConnectionError) {
      onConnectionError();
    } else if (error is UnauthorizedError) {
      onAuthorizationError();
    } else {
      onUnexpectedError();
    }
  }

  void onConnectionError() {
    // TODO(AndriiD): handle Connection Error
  }

  void onAuthorizationError() {
    // TODO(AndriiD): handle Authorization Error
  }

  void onUnexpectedError() {
    // TODO(AndriiD): handle Unexpected Error
  }
}
