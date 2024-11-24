import 'package:chaty/core/services/local/cache_helper.dart';
import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/chat/domain/entities/message.dart';
import 'package:dio/dio.dart';
import '../../../../core/error/execption.dart';
import '../../../../core/services/network/api_constant.dart';
import '../../domain/entities/chat_all_messages.dart';
import '../../domain/entities/message_response.dart';

abstract class ChatRemotDataSource {
  Future<MessageResponse> sendMessage(Message message);
  Future<ChatMessagesResponse> getMessages(int chatId);
}

class ChatRemotDataSourceImpl implements ChatRemotDataSource {
  final Dio dio;

  ChatRemotDataSourceImpl({required this.dio});

  @override
  Future<MessageResponse> sendMessage(Message message) async {
    try {
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

  @override
  Future<ChatMessagesResponse> getMessages(int chatId) async {
    try {
      Map<String, String> header = {
        "Accept": "application/json",
        "Content-Type": "application/json",
        "Authorization":
            "Bearer ${CacheHelper.getData(key: SharedPrefConst.apiToken).toString()}"
      };
      print(CacheHelper.getData(key: SharedPrefConst.apiToken).toString());
      final response = await dio.post(
        ApiConstants.apiBaseUrl + ApiConstants.getAllMessage,
        data: {"conversation_id": chatId},
        options: Options(
            headers: header, receiveTimeout: const Duration(seconds: 30)),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final chatMessages = ChatMessagesResponse.fromJson(data);
        return chatMessages;
      } else {
        throw ServerException();
      }
    } catch (e) {
      print(e.toString());
      throw ServerException();
    }
  }
}
