import 'package:chaty/features/auth/domain/entities/user_response_entity.dart';

import '../../../../core/error/failuers.dart';
import 'package:dartz/dartz.dart';

import '../entities/login_request_body.dart';
import '../entities/register_request_body.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserReponse>> registerUer(
      RegisterRequestBody requestBody);
  Future<Either<Failure, UserReponse>> loginUser(
      LoginRequestBody loginRequestBody);
}
