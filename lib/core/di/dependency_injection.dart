import 'package:chaty/features/chat/dependency_injection/chat_injection.dart';
import 'package:chaty/features/home/dependency_injection/home_injection.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chaty/core/network/network_info.dart';
import 'package:chaty/core/services/network/dio_factory.dart';

import '../../features/auth/dependency_injection/auth_injection.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // App Features
  await authInjection();
  await homeInjection();
  await chatInjection();

  // Core
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(checker: getIt()));
  // External
  final sharedPref = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPref);
  Dio dio = DioFactory.getDio();
  // dio.interceptors.add(
  //   PrettyDioLogger(
  //     requestBody: true,
  //     requestHeader: true,
  //     responseHeader: true,
  //   ),
  // );

  getIt.registerLazySingleton(() => dio);
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
