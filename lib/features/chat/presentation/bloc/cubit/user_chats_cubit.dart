import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:chaty/core/services/pusher/pusher_client.dart';
import 'package:chaty/features/chat/domain/entities/message.dart';
import 'package:chaty/features/home/domain/entities/all_conversataion.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/all_active_users_entity.dart';
import '../../../domain/entities/message_response.dart';

import '../../../domain/use_cases/send_message.dart';

part 'user_chats_state.dart';
part 'user_chats_cubit.freezed.dart';

class UserChatsCubit extends Cubit<UserChatsState> {
  UserChatsCubit({
    required this.sendMessage,
  }) : super(const UserChatsState.initial());
  final SendMessageUseCase sendMessage;
  final messageController = TextEditingController();
  late int chatId;
  // List<ChatModel> chatList = [];

  // Future<void> getAllMessages() async {
  //   emit(GetChatLoading());
  //   listenToChannel();
  //   final response = await DioConsumer().get("/message-user-with-support");
  //   if (response.statusCode == StatusCode.ok) {
  //     chatList.clear();
  //     List list = jsonDecode(response.data) as List;
  //     chatList = list.map<ChatModel>((e) => ChatModel.fromJson(e)).toList();
  //     emit(GetChatSuccess());
  //   }
  // }

  Future<void> listenToChannel() async {
    String pusherKey = dotenv.env['PUSHER_API_KEY'] ?? '';
    String cluster = dotenv.env['PUSHER_CLUSTER'] ?? '';
    final pusher = await PusherClient()
        .initPusher(cluster: cluster, pusherApiKey: pusherKey);
    pusher.subscribe(
        channelName: "$chatId",
        onEvent: (event) {
          debugPrint(event.toString());

          if (event.data != null && event.eventName == "message") {
            Map<String, dynamic> map = jsonDecode(event.data!);
            debugPrint(map.toString());
            // ChatModel chatModel = ChatModel.fromJson(map['message']);
            // chatList.add(chatModel);
            // emit(ReceiveNewMessageState());
          }
        });
  }

  // Future<void> sendMessage({
  //   required String message,
  // }) async {
  //   final response = await DioConsumer()
  //       .post("/add-message-user-to-support", body: {"message": message});
  //   if (response.statusCode == StatusCode.ok) {
  //     final res = jsonDecode(response.data) as Map;
  //     ChatModel chatModel = ChatModel.fromJson(res['message']);
  //     emit(SendNewChatSuccess());
  //   }
  // }
  List<ChatMessage> messages = [];
  sendMessageOrStartChat(int user2Id) async {
    emit(const UserChatsState.loading());
    listenToChannel();
    final response = await sendMessage(
        Message(user2Id: user2Id, message: messageController.text));
    response.fold((l) {
      emit(const UserChatsState.error(''));
    }, (r) {
      listenToChannel();
      chatId = r.data.id;
      messages.add(r.data);
      emit(UserChatsState.sendMessageSuccess(r));
    });
  }
}
