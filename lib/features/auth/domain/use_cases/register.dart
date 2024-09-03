import 'package:chaty/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';
import '../entities/register_request_body.dart';
import '../entities/user_response_entity.dart';

class RegisterUserUseCase {
  final AuthRepo _authRepo;

  RegisterUserUseCase(this._authRepo);
  Future<Either<Failure, UserReponse>> call(
      RegisterRequestBody requestBody) async {
    return await _authRepo.registerUer(requestBody);
  }
}
