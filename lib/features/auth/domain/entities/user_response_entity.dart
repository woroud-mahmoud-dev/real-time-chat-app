import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../data/models/user_model.dart';

@immutable
class UserReponse extends Equatable {
  final String isSuccess;
  final String? message;
  final String accessToken;
  final int status;
  final UserModel? user;
  const UserReponse(
      {required this.status,
      required this.isSuccess,
      required this.user,
      required this.accessToken,
      required this.message});

  @override
  List<Object?> get props => [user, status, isSuccess, message, accessToken];
}

@immutable
class UserEntity extends Equatable {
  final int id;
  final String name;
  final String phone;
  final String email;
  final String image;

  const UserEntity(
      {required this.id,
      required this.name,
      required this.email,
      required this.phone,
      required this.image});

  @override
  List<Object?> get props => [id, name, phone, email, image];
}
