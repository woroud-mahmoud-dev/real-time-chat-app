import 'package:chaty/features/chat/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failuers.dart';
import '../entities/chat_all_messages.dart';

class GetChatMessages {
  final ChatRepo chatsRepo;

  GetChatMessages({required this.chatsRepo});
  Future<Either<Failure, ChatMessagesResponse>> call(int chatId) {
    return chatsRepo.getAllChatMessages(chatId);
  }
}
