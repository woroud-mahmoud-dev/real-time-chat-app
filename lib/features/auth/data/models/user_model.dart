import '../../domain/entities/user_response_entity.dart';

class UserResponseModel extends UserReponse {
  const UserResponseModel(
      {required super.status,
      required super.isSuccess,
      required super.user, // Change here
      required super.accessToken,
      required super.message});

  factory UserResponseModel.fromJson(Map<String, dynamic> json) {
    return UserResponseModel(
        status: json["status"],
        isSuccess: json["isSuccess"],
        accessToken: json["accessToken"],
        user: json["data"] != null ? UserModel.fromJson(json["data"]) : null,
        message: json["message"]);
  }
  // Map<String, dynamic> toJson() {
  //   return {
  //     "status": status,
  //     "isSuccess": isSuccess,
  //     "user": user!.toJson(),
  //     "accessToken": accessToken,
  //     "message": message,
  //   };
  // }
}

class UserModel extends UserEntity {
  const UserModel(
      {required super.phone,
      required super.id,
      required super.email,
      required super.name,
      required super.image});
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        image: json["image"]);
  }
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "phone": phone,
      "email": email,
      "image": image,
    };
  }
}
