import 'package:solution_starter/data/datasource/network/exchange_models/network_request_body.dart';

enum NetworkRequestType { get, post, put, delete }

class NetworkRequest {
  const NetworkRequest({
    required this.method,
    required this.path,
    required this.data,
    this.queryParams,
    this.headers,
    this.extra,
    this.retry = false,
  });

  final NetworkRequestType method;
  final String path;
  final NetworkRequestBody data;
  final Map<String, dynamic>? queryParams;
  final Map<String, String>? headers;
  final Map<String, dynamic>? extra;
  final bool retry;
}
