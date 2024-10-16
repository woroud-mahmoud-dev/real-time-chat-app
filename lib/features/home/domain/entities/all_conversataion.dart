import 'dart:convert';

AllConversationsResponse allConversationResponseFromJson(String str) =>
    AllConversationsResponse.fromJson(json.decode(str));

String allConversationResponseToJson(AllConversationsResponse data) =>
    json.encode(data.toJson());

class AllConversationsResponse {
  final String isSuccess;
  final String message;
  final List<Conversation> data;
  final int status;
  final dynamic accessToken;

  AllConversationsResponse({
    required this.isSuccess,
    required this.message,
    required this.data,
    required this.status,
    required this.accessToken,
  });

  factory AllConversationsResponse.fromJson(Map<String, dynamic> json) =>
      AllConversationsResponse(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: List<Conversation>.from(
            json["data"].map((x) => Conversation.fromJson(x))),
        status: json["status"],
        accessToken: json["access_token"],
      );

  Map<String, dynamic> toJson() => {
        "isSuccess": isSuccess,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "status": status,
        "access_token": accessToken,
      };
}

class Conversation {
  final int id;
  final String userOneId;
  final String userTwoId;
  final UserOneClass userOne;
  final UserOneClass userTwo;
  final List<ConvMessage> messages;

  Conversation({
    required this.id,
    required this.userOneId,
    required this.userTwoId,
    required this.userOne,
    required this.userTwo,
    required this.messages,
  });

  factory Conversation.fromJson(Map<String, dynamic> json) => Conversation(
        id: json["id"],
        userOneId: json["user_one_id"],
        userTwoId: json["user_two_id"],
        userOne: UserOneClass.fromJson(json["user_one"]),
        userTwo: UserOneClass.fromJson(json["user_two"]),
        messages: List<ConvMessage>.from(
            json["messages"].map((x) => ConvMessage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_one_id": userOneId,
        "user_two_id": userTwoId,
        "user_one": userOne.toJson(),
        "user_two": userTwo.toJson(),
        "messages": List<dynamic>.from(messages.map((x) => x.toJson())),
      };
}

class ConvMessage {
  final int id;
  final String conversationId;
  final String userId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String message;
  final User user;

  ConvMessage({
    required this.id,
    required this.conversationId,
    required this.userId,
    required this.createdAt,
    required this.updatedAt,
    required this.message,
    required this.user,
  });

  factory ConvMessage.fromJson(Map<String, dynamic> json) => ConvMessage(
        id: json["id"],
        conversationId: json["conversation_id"],
        userId: json["user_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        message: json["message"],
        user: User.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "conversation_id": conversationId,
        "user_id": userId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "message": message,
        "user": user.toJson(),
      };
}

class User {
  final int id;
  final String name;
  final String email;
  final String phone;
  final dynamic image;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.image,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "image": image,
      };
}

class UserOneClass {
  final int id;
  final String name;
  final String email;
  final String phone;
  final dynamic emailCode;
  final String image;

  UserOneClass({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.emailCode,
    required this.image,
  });

  factory UserOneClass.fromJson(Map<String, dynamic> json) => UserOneClass(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        phone: json["phone"],
        emailCode: json["email_code"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "email": email,
        "phone": phone,
        "email_code": emailCode,
        "image": image,
      };
}
