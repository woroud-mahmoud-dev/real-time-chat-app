import 'package:chaty/features/home/domain/entities/all_active_users_entity.dart';

class AllActiveUsersResponseModel extends AllActiveUsersResponseEntity {
  const AllActiveUsersResponseModel(
      {required super.isSuccess,
      required super.message,
      required super.data,
      required super.status,
      required super.accessToken});
  factory AllActiveUsersResponseModel.fromJson(Map<String, dynamic> json) =>
      AllActiveUsersResponseModel(
        isSuccess: json["isSuccess"],
        message: json["message"],
        data: List<ActiveUser>.from(
            json["data"].map((x) => ActiveUser.fromJson(x))),
        status: json["status"],
        accessToken: json["access_token"],
      );
}
