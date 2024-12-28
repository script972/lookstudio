
import '../../../../core/failure.dart';

class DataBaseError extends Failure {
  DataBaseError({
    required dynamic error,
    this.query,
  }) : super(error);
  final String? query;

  @override
  String toString() => 'DataBaseError{error: $error, query: $query,}';
}
