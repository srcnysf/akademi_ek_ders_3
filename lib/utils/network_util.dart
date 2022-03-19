import 'package:akademi_ek_ders_3/constants/api_constants.dart';
import 'package:akademi_ek_ders_3/utils/dio_connectivity_retrier.dart';
import 'package:akademi_ek_ders_3/utils/network_retry_interceptor.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class NetworkUtil {
  final dio = Dio();

  BaseOptions options = BaseOptions(
      receiveTimeout: ApiConstants.RECIEVE_TIMEOUT,
      connectTimeout: ApiConstants.CONNECTION_TIMEOUT,
      headers: {
        "Content-Type": "application/json; charset=utf-8",
      },
      baseUrl: ApiConstants.BASE_URL);

  Dio getDio() {
    dio.options = options;
    options.baseUrl = ApiConstants.BASE_URL;
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );
    dio.interceptors.add(LogInterceptor(error: kDebugMode, requestBody: kDebugMode, responseBody: kDebugMode));
    return dio;
  }
}
