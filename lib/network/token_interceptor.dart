import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/data/datasource/local/facade/auth_store.dart';

class TokenInterceptor extends Interceptor {
  TokenInterceptor({
    required AuthStore authStore,
  }) : _authStore = authStore {
    logger.i('Create TokenInterceptor');
  }

  final AuthStore _authStore;
  // final Dio _dio;

  final Logger logger = getLogger('TokenInterceptor');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    logger.i('onRequest, ${options.baseUrl + options.path}');

    //Get token from store. If token is null, pass empty string to as token,
    //failed response will be then handled later in [NetworkService]
    // fqRMDPoNQte2BTug0gqpJS:APA91bFE0-IMmmHIh1y3hlT51HR7qmSIFENWQdI_-4yRDGiGJrXCDtUdI-JY37E2YHPwHiZuDS6m7XcNBH0SCmLhmnM4ucywV1Ssgsrw2eHZckb7P0D5VfvfHR75qIvdJmVA9aw6nZfk
    // var ddd = await FirebaseAuth.instance.signInWithEmailAndPassword(email: 'demo@wattev.com', password: 'demo123A\$');
    // var authFirebase = FirebaseAuth.instance.currentUser;
    // var tokenFirebase = await authFirebase?.getIdToken(true);
    //final String token = await _authStore.getToken() ?? '';

    //Attach token
    // options.headers['Authorization'] = 'Bearer $tokenFirebase';

    super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    logger.i('in onError, code: ${err.response?.statusCode}');

    // On Unauthenticated error
    if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
      logger.i('defined unauthenticated error');

      // Refresh token
      logger.i('refresh token ...');
      //final refreshResult = await GetIt.I.get<SessionCubit>().refreshToken();
      final refreshResult = true;
      logger.i('... refreshResult: $refreshResult');

      // If refresh successful, repeat request
      if (refreshResult) {
        /*// New options
        final newOptions = Options(
          method: err.requestOptions.method,
          headers: err.requestOptions.headers,
        );
        logger.i('created new options: $newOptions');

        // Repeat request
        logger.i('perform new request');
        final cloneRequest = await GetIt.I.get<Dio>().request(
              err.requestOptions.path,
              options: newOptions,
              data: err.requestOptions.data,
              queryParameters: err.requestOptions.queryParameters,
            );

        // Return updated response
        logger.i('resolve handler with new response');
        handler.resolve(cloneRequest);*/

        return;
      }
    }

    logger.i('proceed with error');
    handler.next(err);
  }
}
