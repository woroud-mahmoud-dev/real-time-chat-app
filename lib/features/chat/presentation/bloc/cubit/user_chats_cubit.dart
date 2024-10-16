import 'dart:convert';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:chaty/core/services/pusher/pusher_client.dart';
import 'package:chaty/features/chat/domain/entities/message.dart';
import 'package:chaty/features/home/domain/entities/all_conversataion.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/entities/message_response.dart';

import '../../../domain/use_cases/get_chat_messages.dart';
import '../../../domain/use_cases/send_message.dart';

part 'user_chats_state.dart';
part 'user_chats_cubit.freezed.dart';

class UserChatsCubit extends Cubit<UserChatsState> {
  UserChatsCubit({
    required this.sendMessage,
    required this.getChatMessages,
  }) : super(const UserChatsState.initial());
  final SendMessageUseCase sendMessage;
  final GetChatMessages getChatMessages;
  final messageController = TextEditingController();
  int? conversationId;
  bool isChatExistBefor = false;
  List<ChatMessage> messages = [];
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
  Future<void> listenToChannel(int? cahtId) async {
    if (cahtId != null) {
      String pusherKey = dotenv.env['PUSHER_API_KEY'] ?? '';
      String cluster = dotenv.env['PUSHER_CLUSTER'] ?? '';

      final pusher = await PusherClient()
          .initPusher(cluster: cluster, pusherApiKey: pusherKey);
      pusher.connect();

      pusher.subscribe(
        channelName: "conversation.$cahtId",
        onEvent: (event) {
          debugPrint(event.toString());

          if (event.eventName == "message.sent") {
            debugPrint("Received message.sent event");
            debugPrint("Event Data: ${event.data}");

            try {
              // Decode the JSON string into a Map
              Map<String, dynamic> dataMap = jsonDecode(event.data!);

              // Create a ChatMessage instance from the decoded map
              ChatMessage chatMessage = ChatMessage.fromJson(dataMap);

              // Add the chat message to your messages list
              messages.add(chatMessage);

              // Emit success state
              emit(const UserChatsState.lestenSuccess());

              debugPrint(
                  'Chat message added: ===========================>>>>>>> ${chatMessage.message}');
            } catch (e) {
              debugPrint("Exception occurred: $e");
            }
          }
        },
      );
    }
  }

  Future<void> getAllChatMessages(int? chatId) async {
    if (chatId != null) {
      isChatExistBefor = true;
      try {
        final response = await getChatMessages(chatId!);
        emit(const UserChatsState.loading());
        response.fold((l) {
          emit(const UserChatsState.error(''));
        }, (r) {
          if (kDebugMode) {
            print(messages.length);
          }
          messages.addAll(r.data);
          if (kDebugMode) {
            print(messages.length);
          }
          listenToChannel(chatId);

          emit(const UserChatsState.getAllMessagesSucees());
        });
      } catch (e) {
        debugPrint('No chat bfor');
      }
    } else {
      debugPrint('No chat bfor');
    }
  }

  sendMessageOrStartChat({required int user2Id, required int? chatId}) async {
    emit(const UserChatsState.loading());
    final response = await sendMessage(
        Message(user2Id: user2Id, message: messageController.text));
    if (isChatExistBefor) {
      listenToChannel(chatId);
    } else {}

    response.fold((l) {
      emit(const UserChatsState.error(''));
    }, (r) {
      conversationId = int.parse(r.data.conversationId);
      if (isChatExistBefor) {
        listenToChannel(chatId);
      } else {
        // Add the chat message to your messages list
        messages.add(r.data);
      }
      listenToChannel(conversationId);
      isChatExistBefor = true;
      emit(const UserChatsState.getAllMessagesSucees());
    });
  }
}
