import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solution_starter/data/datasource/network/exchange_models/action_errors.dart';

part 'response.freezed.dart';

@freezed
class NetworkResponse<T> with _$NetworkResponse<T> {
  const factory NetworkResponse.success(T data) = Success<T>;

  const factory NetworkResponse.failure(NetworkError error) = Failure;
}
