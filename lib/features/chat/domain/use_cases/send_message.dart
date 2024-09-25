import 'package:chaty/features/chat/domain/entities/message.dart';
import 'package:chaty/features/chat/domain/entities/message_response.dart';
import 'package:chaty/features/chat/domain/repositories/chat_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/error/failuers.dart';

class SendMessageUseCase {
  final ChatRepo chatsRepo;

  SendMessageUseCase({required this.chatsRepo});
  Future<Either<Failure, MessageResponse>> call(Message messag) {
    return chatsRepo.sendMessage(messag);
  }
}
