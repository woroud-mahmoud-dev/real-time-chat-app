import 'package:chaty/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failuers.dart';

class ResendActiveCode {
  final AuthRepo authRepo;

  ResendActiveCode({required this.authRepo});
  Future<Either<Failure, Unit>> call() {
    return authRepo.resendActiveCode();
  }
}
