import 'package:chaty/features/chat/data/repositories/chat_repo_impl.dart';
import 'package:chaty/features/chat/domain/repositories/chat_repository.dart';
import 'package:chaty/features/chat/domain/use_cases/get_chat_messages.dart';
import 'package:chaty/features/home/data/repositories/home_repo_impl.dart';

import '../../../core/di/dependency_injection.dart';
import '../../home/domain/use_cases/get_all_active_users.dart';
import '../data/datasources/chat_local_datasource.dart';
import '../data/datasources/chat_remote_datasoure.dart';

import '../domain/use_cases/send_message.dart';
import '../presentation/bloc/cubit/user_chats_cubit.dart';

Future<void> chatInjection() async {
  // Bloc
  getIt.registerFactory(
      () => UserChatsCubit(sendMessage: getIt(), getChatMessages: getIt()));
  // getIt.registerFactory(() => LoginCubit(loginUseCas: getIt()));
  // getIt.registerFactory(() =>
  //     ActiveAccountCubit(activeAccount: getIt(), resendActiveCode: getIt()));

  // UseCases
  getIt.registerLazySingleton(() => SendMessageUseCase(chatsRepo: getIt()));
  getIt.registerLazySingleton(() => GetChatMessages(chatsRepo: getIt()));

  // Repository
  getIt.registerLazySingleton<ChatRepo>(() => ChatRepoImpl(
      networkInfo: getIt(),
      chatRemotDataSource: getIt(),
      authLocalDataSource: getIt()));
  // DataSources
  getIt.registerLazySingleton<ChatRemotDataSource>(
      () => ChatRemotDataSourceImpl(dio: getIt()));
  getIt.registerLazySingleton<ChatlocalDataSource>(
      () => ChatlocalDataSourceImpl());
}
