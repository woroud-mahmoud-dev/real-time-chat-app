import 'package:chaty/core/services/local/cache_helper.dart';
import 'package:chaty/core/services/network/api_constant.dart';
import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/auth/domain/entities/login_request_body.dart';
import 'package:chaty/features/auth/domain/entities/register_request_body.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/execption.dart';
import '../models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserResponseModel> register(RegisterRequestBody requestBody);
  Future<UserResponseModel?> login(LoginRequestBody requestBody);
  Future<Unit> activeUserAccount(String code);
  Future<Unit> resendActiveCode();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSourceImpl({required this.dio});

  @override
  Future<UserResponseModel> register(RegisterRequestBody requestBody) async {
    try {
      final response = await dio.post(
          ApiConstants.apiBaseUrl + ApiConstants.register,
          data: requestBody.toJson());

      if (response.statusCode == 200) {
        final data = response.data;
        final userModel = UserResponseModel.fromJson(data);
        CacheHelper.saveData(
            key: SharedPrefConst.userId, value: userModel.user!.id);
        CacheHelper.saveData(
            key: SharedPrefConst.activeCode, value: userModel.user!.emailCode);
        return userModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<UserResponseModel> login(LoginRequestBody requestBody) async {
    try {
      final response = await dio.post(
          ApiConstants.apiBaseUrl + ApiConstants.login,
          data: requestBody.toJson());
      final data = response.data;

      final userModel = UserResponseModel.fromJson(data);
      if (userModel.status == 422) {
        // CacheHelper.saveData(
        //     key: SharedPrefConst.userId, value: userModel.user!.id);
        CacheHelper.saveData(
            key: SharedPrefConst.activeCode, value: userModel.user!.emailCode);
        throw NotVerifedEexeption();
      } else if (userModel.status == 200) {
        CacheHelper.saveData(
            key: SharedPrefConst.userId, value: userModel.user!.id);

        return userModel;
      } else {
        throw ServerException();
      }
    } catch (e) {
      print("The Eror is : $e");
      throw ServerException();
    }
  }

  @override
  Future<Unit> activeUserAccount(String code) async {
    try {
      final response = await dio.post(
          ApiConstants.apiBaseUrl + ApiConstants.activeAccount,
          data: {"code": code});

      if (response.statusCode == 200) {
        return unit;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<Unit> resendActiveCode() async {
    try {
      final response = await dio.post(
        ApiConstants.apiBaseUrl + ApiConstants.resendActiveCode,
      );

      if (response.statusCode == 200) {
        return unit;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
