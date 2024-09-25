import 'package:chaty/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../entities/all_active_users_entity.dart';

class GetAllActiveUsers {
  final HomeRepo chatsRepo;

  GetAllActiveUsers({required this.chatsRepo});
  Future<Either<Failure, AllActiveUsersResponseEntity>> call() {
    return chatsRepo.getAllActiveUsers();
  }
}
