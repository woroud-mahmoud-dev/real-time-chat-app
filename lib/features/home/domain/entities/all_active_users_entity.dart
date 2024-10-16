// To parse this JSON data, do
//
//     final allActiveUsersResponse = allActiveUsersResponseFromJson(jsonString);

import 'package:equatable/equatable.dart';

class AllActiveUsersResponseEntity extends Equatable {
  final String isSuccess;
  final String message;
  final List<ActiveUser> data;
  final int status;
  final dynamic accessToken;

  const AllActiveUsersResponseEntity({
    required this.isSuccess,
    required this.message,
    required this.data,
    required this.status,
    required this.accessToken,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [isSuccess, message, data, accessToken, status];
}

class ActiveUser extends Equatable {
  final int id;
  final int? chatId;
  final String? name;
  final String? email;
  final String phone;
  final dynamic emailCode;
  final String? image;
  final bool? isChatExist;

  const ActiveUser({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.isChatExist,
    required this.chatId,
    required this.emailCode,
    required this.image,
  });

  factory ActiveUser.fromJson(Map<String, dynamic> json) => ActiveUser(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        isChatExist: json["is_chat_exists"],
        phone: json["phone"],
        emailCode: json["email_code"],
        chatId: json["chat_id"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "is_chat_exists": isChatExist,
        "email_code": emailCode,
        "chat_id": chatId,
        "image": image,
      };

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        name,
        email,
        phone,
        isChatExist,
        emailCode,
        image,
        chatId,
      ];
}
