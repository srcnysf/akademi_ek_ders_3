import 'package:dio/dio.dart';

class NetworkErrorUtil {
  static String handleError(DioError error) {
    String errorDescription = '';

    switch (error.type) {
      case DioErrorType.cancel:
        errorDescription = 'Request to API server was cancelled';
        break;
      case DioErrorType.connectTimeout:
        errorDescription = 'Something went wrong, we\'re looking into it';
        break;
      case DioErrorType.other:
        errorDescription = 'Connection to API server failed due to internet connection';
        break;
      case DioErrorType.receiveTimeout:
        errorDescription = 'Receive timeout in connection with API server';
        break;
      case DioErrorType.response:
        errorDescription = error.response!.data['message'].toString();
        break;
      case DioErrorType.sendTimeout:
        errorDescription = 'Send timeout in connection with API server';
        break;
    }

    return errorDescription;
  }
}
