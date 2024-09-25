import 'package:chaty/features/chat/domain/entities/message.dart';
import 'package:chaty/features/chat/domain/entities/message_response.dart';

import '../../../../core/error/failuers.dart';
import 'package:dartz/dartz.dart';

abstract class ChatRepo {
  Future<Either<Failure, MessageResponse>> sendMessage(Message messag);
}
