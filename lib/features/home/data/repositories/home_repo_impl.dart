import 'package:chaty/core/error/execption.dart';
import 'package:chaty/core/error/failuers.dart';
import 'package:chaty/features/home/domain/entities/all_active_users_entity.dart';
import 'package:chaty/features/home/domain/entities/all_conversataion.dart';
import 'package:chaty/features/home/domain/repositories/home_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../../core/network/network_info.dart';

import '../datasources/home_remote_datasoure.dart';

class HomeRepoImpl implements HomeRepo {
  final HomeRemotDataSource chatRemotDataSource;
  final NetworkInfo networkInfo;

  HomeRepoImpl(
      {required this.chatRemotDataSource,
      required this.networkInfo,
      });

  @override
  Future<Either<Failure, AllActiveUsersResponseEntity>>
      getAllActiveUsers() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await chatRemotDataSource.getAllACtiveUsers();

        if (response.status == 200) {
          return Right(response);
        } else {
          return Left(ServerFailure());
        }
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }

  @override
  Future<Either<Failure, AllConversationsResponse>> getUserChats() async {
    if (await networkInfo.isConnected) {
      try {
        final response = await chatRemotDataSource.getAllChats();

        if (response.status == 200) {
          return Right(response);
        } else {
          return Left(ServerFailure());
        }
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
