import 'package:docdoc/core/Networking/api_error_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_result.freezed.dart';
@freezed
abstract class ApiResult<T> with _$ApiResult<T> {
  factory ApiResult.success(T data) = Success<T>;
  factory ApiResult.failure(ErrorHandler errorHandler) = Failure<T>;
}