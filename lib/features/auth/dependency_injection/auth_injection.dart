import 'package:chaty/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:chaty/features/auth/data/datasources/auth_remote_datasoure.dart';
import 'package:chaty/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:chaty/features/auth/domain/repositories/auth_repository.dart';
import 'package:chaty/features/auth/domain/use_cases/login.dart';
import 'package:chaty/features/auth/domain/use_cases/register.dart';
import 'package:chaty/features/auth/presentation/bloc/cubit/login_cubit.dart';
import 'package:chaty/features/auth/presentation/bloc/cubit/register_cubit.dart';
import 'package:chaty/features/auth/presentation/bloc/cubit/verify_cubit.dart';

import '../../../core/di/dependency_injection.dart';
import '../domain/use_cases/active_account.dart';
import '../domain/use_cases/resend_code.dart';

Future<void> authInjection() async {
  // Bloc
  getIt.registerFactory(() => RegisterCubit(registerUserUseCase: getIt()));
  getIt.registerFactory(() => LoginCubit(loginUseCas: getIt()));
  getIt.registerFactory(() =>
      ActiveAccountCubit(activeAccount: getIt(), resendActiveCode: getIt()));

  // UseCases
  getIt.registerLazySingleton(() => RegisterUserUseCase(getIt()));
  getIt.registerLazySingleton(() => LoginUseCase(getIt()));
  getIt.registerLazySingleton(() => ActiveAccountUseCase(authRepo: getIt()));
  getIt.registerLazySingleton(() => ResendActiveCode(authRepo: getIt()));

  // Repository
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(
      networkInfo: getIt(),
      authRemoteDataSource: getIt(),
      authLocalDataSource: getIt()));
  // DataSources
  getIt.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(dio: getIt()));
  getIt.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl());
}
