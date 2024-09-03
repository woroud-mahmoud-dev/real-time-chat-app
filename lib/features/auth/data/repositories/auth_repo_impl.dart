import 'package:chaty/core/error/execption.dart';
import 'package:chaty/core/error/failuers.dart';
import 'package:chaty/features/auth/data/datasources/auth_remote_datasoure.dart';
import 'package:chaty/features/auth/domain/entities/login_request_body.dart';
import 'package:chaty/features/auth/domain/entities/register_request_body.dart';
import 'package:chaty/features/auth/domain/entities/user_response_entity.dart';
import 'package:chaty/features/auth/domain/repositories/auth_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/network/network_info.dart';
import '../datasources/auth_local_datasource.dart';

class AuthRepoImpl implements AuthRepo {
  final AuthRemoteDataSource authRemoteDataSource;
  final AuthLocalDataSource authLocalDataSource;
  final NetworkInfo networkInfo;

  AuthRepoImpl(
      {required this.authRemoteDataSource,
      required this.networkInfo,
      required this.authLocalDataSource});
  @override
  Future<Either<Failure, UserReponse>> loginUser(
      LoginRequestBody loginRequestBody) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await authRemoteDataSource.login(loginRequestBody);
        await authLocalDataSource.cachedUserData(response.user);
        return Right(response);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, UserReponse>> registerUer(
      RegisterRequestBody requestBody) async {
    if (await networkInfo.isConnected) {
      try {
        final response = await authRemoteDataSource.register(requestBody);
        return Right(response);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
