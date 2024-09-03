import 'package:chaty/features/auth/domain/entities/login_request_body.dart';
import 'package:chaty/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../entities/user_response_entity.dart';

class LoginUseCase {
  final AuthRepo _authRepo;

  LoginUseCase(this._authRepo);
  Future<Either<Failure, UserReponse>> call(
      LoginRequestBody requestBody) async {
    return await _authRepo.loginUser(requestBody);
  }
}
