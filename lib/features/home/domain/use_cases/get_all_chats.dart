import 'package:chaty/features/home/domain/entities/all_conversataion.dart';
import 'package:chaty/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';

class GetAllChats {
  final HomeRepo chatsRepo;

  GetAllChats({required this.chatsRepo});
  Future<Either<Failure, AllConversationsResponse>> call() {
    return chatsRepo.getUserChats();
  }
}
