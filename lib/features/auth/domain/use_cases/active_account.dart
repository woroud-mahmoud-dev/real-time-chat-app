import 'package:chaty/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';

class ActiveAccountUseCase {
  final AuthRepo authRepo;

  ActiveAccountUseCase({required this.authRepo});
  Future<Either<Failure, Unit>> call(String code) {
    return authRepo.activeUserAccount(code);
  }
}
