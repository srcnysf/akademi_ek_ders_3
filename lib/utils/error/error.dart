import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class DefaultError with _$DefaultError {
  const factory DefaultError.unknownError(
    String message,
    StackTrace stackTrace,
  ) = _UnknownError;

  const factory DefaultError.apiError(
    dynamic error,
    StackTrace stackTrace,
    int code,
    String message,
  ) = _ApiError;

  const factory DefaultError.businessError(
    int code,
    dynamic error,
    StackTrace stackTrace,
  ) = _BusinessError;
}
