// To parse this JSON data, do
//
//     final chatMessagesResponse = chatMessagesResponseFromJson(jsonString);

import 'package:chaty/features/chat/domain/entities/message_response.dart';
import 'dart:convert';

ChatMessagesResponse chatMessagesResponseFromJson(String str) =>
    ChatMessagesResponse.fromJson(json.decode(str));

String chatMessagesResponseToJson(ChatMessagesResponse data) =>
    json.encode(data.toJson());

class ChatMessagesResponse {
  final String isSuccess;
  final String message;
  final List<ChatMessage> data;
  final int status;
  final dynamic accessToken;

  ChatMessagesResponse({
    required this.isSuccess,
    required this.message,
    required this.data,
    required this.status,
    required this.accessToken,
  });

  factory ChatMessagesResponse.fromJson(Map<String, dynamic> json) =>
      ChatMessagesResponse(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: List<ChatMessage>.from(
            json["data"].map((x) => ChatMessage.fromJson(x))),
        status: json["status"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "data": List<ChatMessage>.from(data.map((x) => x.toJson())),
        "status": status,
        "access_token": accessToken,
      };
}

class User {
  final int id;
  final Name name;
  final Email email;
  final String phone;
  final dynamic image;
  final dynamic emailCode;
  final DateTime emailVerifiedAt;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
    required this.emailCode,
    required this.emailVerifiedAt,
    required this.createdAt,
    required this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: nameValues.map[json["name"]]!,
        email: emailValues.map[json["email"]]!,
        phone: json["phone"],
        image: json["image"],
        emailCode: json["email_code"],
        emailVerifiedAt: DateTime.parse(json["email_verified_at"]),
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": nameValues.reverse[name],
        "email": emailValues.reverse[email],
        "phone": phone,
        "image": image,
        "email_code": emailCode,
        "email_verified_at": emailVerifiedAt.toIso8601String(),
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
      };
}

enum Email { DEV_HASANJASSER_GMAIL_COM, DEV_HASANJSER_GMAIL_COM }

final emailValues = EnumValues({
  "dev.hasanjasser@gmail.com": Email.DEV_HASANJASSER_GMAIL_COM,
  "dev.hasanjser@gmail.com": Email.DEV_HASANJSER_GMAIL_COM
});

enum Name { ALI }

final nameValues = EnumValues({"ali": Name.ALI});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
