
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';

import '../../exchange_models/action_errors.dart';
import '../../exchange_models/request.dart';
import '../../exchange_models/response.dart';
import 'network_service_interface.dart';

class AuthNetworkService implements INetworkService {
  AuthNetworkService({
    String baseUrl = '',
    int connectTimeout = defaultTimeout,
    int receiveTimeout = defaultTimeout,
    int sendTimeout = defaultTimeout,
  }) : _dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: Duration(milliseconds: connectTimeout),
      receiveTimeout: Duration(milliseconds: receiveTimeout),
      sendTimeout: Duration(milliseconds: sendTimeout),
    ),
  ){
  }

  static const int defaultTimeout = 5000;

  final Dio _dio;

  @override
  set baseUrl(String url) {
    final baseUrl = _dio.options.baseUrl;
    _dio.options.baseUrl = baseUrl.isEmpty
        ? url
        : throw StateError('Base URL has been already set up to $baseUrl. You\'re trying to reset the value.');
  }

  @override
  Future<NetworkResponse<T>> request<T>(
      NetworkRequest request, {
        ProgressCallback? onSentProgress,
        ProgressCallback? onReceiveProgress,
        CancelToken? cancelToken,
        OnParse? onParse,
      }) async {
    final options = Options()
      ..method = request.method.name
      ..headers = request.headers ?? <String, dynamic>{}
      ..extra = request.extra ?? <String, dynamic>{}
      ..disableRetry = !request.retry;
    try {
      final response = await _dio.request(
        request.path,
        data: request.data ?? request.formData,
        queryParameters: request.queryParams,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onReceiveProgress,
        onReceiveProgress: onReceiveProgress,
      );
      final result = onParse == null ? response.data : onParse(response);
      return SuccessResponse<T>(result);
    } on DioException catch (e) {
      final error = _parseError(e);
      return ErrorResponse(error);
    }
  }

  NetworkError _parseError(DioException error) {
    final cause = error.error;
    final baseUrl = error.requestOptions.baseUrl;
    final path = error.requestOptions.path;
    final response = error.response;
    final statusCode = response?.statusCode;
    return NetworkError(error: cause, baseUrl: baseUrl, path: path, statusCode: statusCode);
  }
}
