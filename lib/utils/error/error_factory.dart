import 'error.dart';

abstract class ErrorFactory {
  DefaultError createUnknownError(String error, StackTrace stackTrace);

  DefaultError createApiError(
      dynamic error, StackTrace stackTrace, int code, String message);

  DefaultError createBusinessError(
      int code, dynamic error, StackTrace stackTrace);
}
