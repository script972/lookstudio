import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:solution_starter/core/logger.dart';
import 'package:solution_starter/network/network_request.dart';
import 'package:solution_starter/network/network_response.dart';

class NetworkService {
  final Logger _logger = getLogger('NetworkService');
  final Dio _dio;
  final Map<String, String> _headers;

  NetworkService({
    required dio,
    httpHeaders,
  })  : _dio = dio,
        _headers = httpHeaders ?? {};

  ///Execute network request in isolate
  Future<NetworkResponse<Model>> execute<Model>(
    NetworkRequest request,
    Model Function(dynamic) parser, {
    ProgressCallback? onSentProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final req = _PreparedNetworkRequest(
      request: request,
      parser: parser,
      dio: _dio,
      headers: {..._headers, ...(request.headers ?? {})},
      onReceiveProgress: onReceiveProgress,
      onSendProgress: onSentProgress,
    );

    // NOTE: Had to disable processing request in isolate, because "refresh token" feature requires singleton
    // dependencies from DI, but it is imposable to get them in separate isolate ((
    final result = await _executeRequest<Model>(req);
    // final result = await compute(
    //   _executeRequest<Model>,
    //   req,
    // );

    return result;
  }

  //Network request logic, should executed inside isolate
  Future<NetworkResponse<Model>> _executeRequest<Model>(
    _PreparedNetworkRequest request,
  ) async {
    try {
      dynamic body = request.request.data.whenOrNull(
        json: (data) => data,
        text: (data) => data,
      );

      final response = await request.dio.request(
        request.request.path,
        data: body,
        queryParameters: request.request.queryParams,
        options: Options(
          method: request.request.type.name,
          headers: request.headers,
        ),
        onSendProgress: request.onReceiveProgress,
        onReceiveProgress: request.onReceiveProgress,
      );

      return NetworkResponse.ok(request.parser(response.data));
    } on DioError catch (error) {
      final errorText = error.toString();

      if (error.message.contains('Failed host lookup')) {
        return const NetworkResponse.hostUnavailable();
      }

      switch (error.response?.statusCode) {
        case 400:
          return NetworkResponse.badRequest(errorText);
        case 401:
          return NetworkResponse.noAuth(errorText);
        case 403:
          return NetworkResponse.noAccess(errorText);
        case 404:
          return NetworkResponse.notFound(errorText);
        case 409:
          return NetworkResponse.conflict(errorText);
        default:
          return NetworkResponse.noData(errorText);
      }
    } catch (error, stacktrace) {
      _logger.e('PARSING ERROR:');
      _logger.e('message: ${error.toString()}');
      _logger.e('stacktrace: $stacktrace');

      return NetworkResponse.noData(error.toString());
    }
  }
}

class _PreparedNetworkRequest<T> {
  final NetworkRequest request;
  final T Function(dynamic) parser;
  final Dio dio;
  final Map<String, dynamic> headers;
  final ProgressCallback? onSendProgress;
  final ProgressCallback? onReceiveProgress;

  const _PreparedNetworkRequest({
    required this.request,
    required this.parser,
    required this.dio,
    required this.headers,
    this.onSendProgress,
    this.onReceiveProgress,
  });
}
