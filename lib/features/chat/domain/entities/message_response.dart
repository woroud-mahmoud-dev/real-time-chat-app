// To parse this JSON data, do
//
//     final messageResponse = messageResponseFromJson(jsonString);

import 'dart:convert';

MessageResponse messageResponseFromJson(String str) =>
    MessageResponse.fromJson(json.decode(str));

String messageResponseToJson(MessageResponse data) =>
    json.encode(data.toJson());

class MessageResponse {
  final String isSuccess;
  final String message;
  final ChatMessage data;
  final int status;
  final dynamic accessToken;

  MessageResponse({
    required this.isSuccess,
    required this.message,
    required this.data,
    required this.status,
    required this.accessToken,
  });

  factory MessageResponse.fromJson(Map<String, dynamic> json) =>
      MessageResponse(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: ChatMessage.fromJson(json["data"]),
        status: json["status"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "data": data.toJson(),
        "status": status,
        "access_token": accessToken,
      };
}

class ChatMessage {
  final String conversationId;
  final String message;
  final String userId;
  final DateTime updatedAt;
  final DateTime createdAt;
  final int id;

  ChatMessage({
    required this.conversationId,
    required this.message,
    required this.userId,
    required this.updatedAt,
    required this.createdAt,
    required this.id,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) => ChatMessage(
        conversationId: json["conversation_id"].toString(),
        message: json["message"],
        userId: json["user_id"].toString(),
        updatedAt: DateTime.parse(json["updated_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "conversation_id": conversationId,
        "message": message,
        "user_id": userId,
        "updated_at": updatedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "id": id,
      };
}
