import 'package:chaty/core/services/local/cache_helper.dart';
import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/chat/domain/entities/message.dart';
import 'package:chaty/features/home/data/models/all_active_user_model.dart';
import 'package:chaty/features/home/domain/entities/all_conversataion.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../../../../core/error/execption.dart';
import '../../../../core/services/network/api_constant.dart';
import '../../domain/entities/message_response.dart';

abstract class HomeRemotDataSource {
  Future<MessageResponse> sendMessage(Message message);
}

class ChatRemotDataSourceImpl implements HomeRemotDataSource {
  final Dio dio;

  ChatRemotDataSourceImpl({required this.dio});

  @override
  Future<MessageResponse> sendMessage(Message message) async {
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
      final response = await dio.post(
        ApiConstants.apiBaseUrl + ApiConstants.sendMessageOrStartChat,
        data: message.toJson(),
        options: Options(
            headers: header, receiveTimeout: const Duration(seconds: 30)),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final messageResponse = MessageResponse.fromJson(data);
        return messageResponse;
      } else {
        throw ServerException();
      }
    } catch (e) {
      throw ServerException();
    }
  }
}
