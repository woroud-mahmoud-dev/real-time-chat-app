import 'package:chaty/features/chat/domain/entities/message.dart';
import 'package:chaty/features/chat/domain/entities/message_response.dart';

import '../../../../core/error/failuers.dart';
import 'package:dartz/dartz.dart';

import '../entities/chat_all_messages.dart';

abstract class ChatRepo {
  Future<Either<Failure, MessageResponse>> sendMessage(Message messag);
  Future<Either<Failure, ChatMessagesResponse>> getAllChatMessages(int chatId);
}
