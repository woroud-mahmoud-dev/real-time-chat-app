import 'package:chaty/core/services/local/cache_helper.dart';
import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/home/data/models/all_active_user_model.dart';
import 'package:chaty/features/home/domain/entities/all_conversataion.dart';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/error/execption.dart';
import '../../../../core/services/network/api_constant.dart';

abstract class HomeRemotDataSource {
  Future<AllConversationsResponse> getAllChats();
  Future<AllActiveUsersResponseModel> getAllACtiveUsers();
}

class HomeRemotDataSourceImpl implements HomeRemotDataSource {
  final Dio dio;

  HomeRemotDataSourceImpl({required this.dio});
  @override
  Future<AllConversationsResponse> getAllChats() async {
    try {
      print(CacheHelper.getData(key: SharedPrefConst.apiToken).toString());
      Map<String, String> header = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization":
            "Bearer ${CacheHelper.getData(key: SharedPrefConst.apiToken).toString()}"
      };
      final response = await dio.get(
        ApiConstants.apiBaseUrl + ApiConstants.allConversations,
        options: Options(
            headers: header, receiveTimeout: const Duration(seconds: 30)),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final allConversations = AllConversationsResponse.fromJson(data);
        return allConversations;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }

  @override
  Future<AllActiveUsersResponseModel> getAllACtiveUsers() async {
    try {
      if (kDebugMode) {
        print('token is ======================>');

        print(CacheHelper.getData(key: SharedPrefConst.apiToken).toString());
      }
      Map<String, String> header = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization":
            "Bearer ${CacheHelper.getData(key: SharedPrefConst.apiToken).toString()}"
      };
      final response = await dio.get(
        ApiConstants.apiBaseUrl + ApiConstants.allActiveUeseres,
        options: Options(
            headers: header, receiveTimeout: const Duration(seconds: 30)),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final activeUsres = AllActiveUsersResponseModel.fromJson(data);
        return activeUsres;
      } else if (response.statusCode == 401) {
        throw UnAuthraizedException();
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
