import 'package:akademi_ek_ders_3/services/api_service.dart';
import 'package:akademi_ek_ders_3/utils/error/default_error_factory.dart';
import 'package:akademi_ek_ders_3/utils/error/error_factory.dart';
import 'package:akademi_ek_ders_3/utils/error/error_separator.dart';
import 'package:akademi_ek_ders_3/utils/network_util.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../repository/repository.dart';

GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  //NETWORK
  locator.registerLazySingleton<Dio>(() => NetworkUtil().getDio());
  locator.registerLazySingleton(() => ApiService(locator.get()));
  locator.registerLazySingleton(() => Repository(locator.get(), locator.get()));

  ///ERROR
  locator.registerLazySingleton(() => ErrorFactory);
  locator.registerLazySingleton(() => DefaultErrorFactory());
  locator.registerLazySingleton(() => ErrorSeparator(locator.get()));
}
