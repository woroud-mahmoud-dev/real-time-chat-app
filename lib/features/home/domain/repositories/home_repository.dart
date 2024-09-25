import 'package:chaty/features/home/domain/entities/all_conversataion.dart';

import '../../../../core/error/failuers.dart';
import 'package:dartz/dartz.dart';

import '../entities/all_active_users_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, AllConversationsResponse>> getUserChats();
  Future<Either<Failure, AllActiveUsersResponseEntity>> getAllActiveUsers();
}
