import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:solution_starter/core/failure.dart';
part 'result.freezed.dart';

@freezed
class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success<T>;
  const factory Result.error(Failure error) = Error;
}