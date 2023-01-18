import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse {
  const factory ApiResponse.ok(T data) = Ok;
  const factory ApiResponse.noAuth() = NoAuth;
  const factory ApiResponse.hostUnavailable() = HostUnavailable;
  const factory ApiResponse.unknownError({String? message}) = UnknownError;
}
