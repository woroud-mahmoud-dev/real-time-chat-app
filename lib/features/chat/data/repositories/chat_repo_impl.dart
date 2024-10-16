import 'package:chaty/core/error/execption.dart';
import 'package:chaty/core/error/failuers.dart';
import 'package:chaty/features/chat/domain/entities/chat_all_messages.dart';
import 'package:chaty/features/chat/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/message.dart';
import '../../domain/entities/message_response.dart';
import '../datasources/chat_local_datasource.dart';
import '../datasources/chat_remote_datasoure.dart';

class ChatRepoImpl implements ChatRepo {
  final ChatRemotDataSource chatRemotDataSource;
  final ChatlocalDataSource authLocalDataSource;
  final NetworkInfo networkInfo;

  ChatRepoImpl(
      {required this.chatRemotDataSource,
      required this.networkInfo,
      required this.authLocalDataSource});

  @override
  Future<Either<Failure, MessageResponse>> sendMessage(Message message) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await chatRemotDataSource.sendMessage(message);

        if (response.status == 200) {
          return Right(response);
        } else {
          return Left(ServerFailure());
        }
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, ChatMessagesResponse>> getAllChatMessages(
      int chatId) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await chatRemotDataSource.getMessages(chatId);

        if (response.status == 200) {
          return Right(response);
        } else {
          return Left(ServerFailure());
        }
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
