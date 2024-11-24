import 'package:chaty/features/home/data/repositories/home_repo_impl.dart';
import 'package:chaty/features/home/domain/repositories/home_repository.dart';
import 'package:chaty/features/home/presentation/bloc/cubit/home_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../data/datasources/home_remote_datasoure.dart';
import '../domain/use_cases/get_all_chats.dart';
import '../domain/use_cases/get_all_active_users.dart';

Future<void> homeInjection() async {
  // Bloc
  getIt.registerFactory(
      () => HomeCubit(getUserContacts: getIt(), getUserChats: getIt()));

  // UseCases
  getIt.registerLazySingleton(() => GetAllChats(chatsRepo: getIt()));
  getIt.registerLazySingleton(() => GetAllActiveUsers(chatsRepo: getIt()));

  // Repository
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepoImpl(
        networkInfo: getIt(),
        chatRemotDataSource: getIt(),
      ));

  // DataSources
  getIt.registerLazySingleton<HomeRemotDataSource>(
      () => HomeRemotDataSourceImpl(dio: getIt()));
}
