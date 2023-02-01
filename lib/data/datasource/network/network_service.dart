import 'dart:async';
import 'package:dio/dio.dart';
import 'package:dio_smart_retry/dio_smart_retry.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/network_errors.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/request.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/response.dart';

typedef OnParse<T> = T Function(dynamic);

abstract class NetworkService {
  NetworkService({
    required Dio dio,
  });

  set baseUrl(String url);

  Future<NetworkResponse<T>> request<T>(
    NetworkRequest request,
    OnParse onParse, {
    ProgressCallback? onSentProgress,
    ProgressCallback? onReceiveProgress,
  });
}

class NetworkServiceImpl implements NetworkService {
  NetworkServiceImpl({
    required Dio dio,
  }) : _dio = dio;

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
    NetworkRequest request,
    OnParse onParse, {
    ProgressCallback? onSentProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final options = Options()
      ..method = request.method.name
      ..headers = request.headers ?? <String, dynamic>{}
      ..extra = request.extra ?? <String, dynamic>{}
      ..disableRetry = !request.retry;
    try {
      final response = await _dio.request(
        request.path,
        data: request.data,
        queryParameters: request.queryParams,
        options: options,
        onSendProgress: onReceiveProgress,
        onReceiveProgress: onReceiveProgress,
      );

      return NetworkResponse.success(onParse(response.data));
    } on DioError catch (e) {
      return _parseError<T>(e);
    }
  }

  NetworkResponse<T> _parseError<T>(DioError error) {
    final cause = error.error;
    final baseUrl = error.requestOptions.baseUrl;
    final path = error.requestOptions.path;
    final response = error.response;
    final statusCode = response?.statusCode;
    final networkError = NetworkError(error: cause, baseUrl: baseUrl, path: path, statusCode: statusCode);
    if (error.type == DioErrorType.response) {
      return NetworkResponse.failure(networkError);
    } else if (error.type == DioErrorType.connectTimeout ||
        error.type == DioErrorType.sendTimeout ||
        error.type == DioErrorType.receiveTimeout) {
      return NetworkResponse.failure(networkError);
    } else {
      return NetworkResponse.failure(networkError);
    }
  }
}
