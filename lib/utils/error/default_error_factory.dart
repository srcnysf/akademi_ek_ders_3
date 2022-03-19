import 'package:akademi_ek_ders_3/utils/error/error.dart';
import 'package:akademi_ek_ders_3/utils/error/error_factory.dart';

class DefaultErrorFactory extends ErrorFactory {
  @override
  DefaultError createApiError(dynamic e, StackTrace stackTrace, int code, String message) =>
      DefaultError.apiError(e, stackTrace, code, message);

  @override
  DefaultError createBusinessError(int code, dynamic error, StackTrace stackTrace) =>
      DefaultError.businessError(code, error, stackTrace);

  @override
  DefaultError createUnknownError(String error, StackTrace stackTrace) => DefaultError.unknownError(error, stackTrace);
}
