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
  final String? name;
  final String? email;
  final String phone;
  final dynamic emailCode;
  final String? image;

  const ActiveUser({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.emailCode,
    required this.image,
  });

  factory ActiveUser.fromJson(Map<String, dynamic> json) => ActiveUser(
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

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, email, phone, emailCode, image];
}
