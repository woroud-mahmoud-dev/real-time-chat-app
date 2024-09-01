import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:chaty/core/network/network_info.dart';
import 'package:chaty/core/services/network/dio_factory.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // App Features
  // await postInjection();
  // Core
  getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(checker: getIt()));
  // External
  final sharedPref = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPref);
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton(() => dio);
  getIt.registerLazySingleton(() => InternetConnectionChecker());
}
