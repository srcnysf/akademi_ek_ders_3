import 'package:akademi_ek_ders_3/utils/error/default_error_factory.dart';
import 'package:akademi_ek_ders_3/utils/error/error.dart';
import 'package:akademi_ek_ders_3/utils/error/network_error_utils.dart';
import 'package:dio/dio.dart';

class ErrorSeparator {
  final DefaultErrorFactory errorFactory;

  const ErrorSeparator(
    this.errorFactory,
  );

  DefaultError createError(Object exception, StackTrace stackTrace) {
    try {
      if (exception is DioError) {
        return errorFactory.createApiError(exception, stackTrace, 1, NetworkErrorUtil.handleError(exception));
      } else {
        return errorFactory.createBusinessError(2, exception, stackTrace);
      }
    } catch (e, stackTrace) {
      return errorFactory.createUnknownError(e.toString(), stackTrace);
    }
  }
}
