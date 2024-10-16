import 'dart:convert';
import 'package:chaty/core/utils/shared_pref_const.dart';
import 'package:chaty/features/auth/data/models/user_model.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class ChatlocalDataSource {
  Future<UserModel> getCachedUserData();
  Future<Unit> cachedUserData(UserModel userModel);
}

class ChatlocalDataSourceImpl implements ChatlocalDataSource {
  @override
  Future<Unit> cachedUserData(UserModel userModel) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(SharedPrefConst.user, userModel.toJson().toString());
    return Future.value(unit);
  }

  @override
  Future<UserModel> getCachedUserData() async {
    final prefs = await SharedPreferences.getInstance();
    final user = prefs.getString(SharedPrefConst.user);
    if (user != null) {
      var decodeJsonData = json.decode(user);
      UserModel jsonToUserModels = UserModel.fromJson(decodeJsonData);
      return Future.value(jsonToUserModels);
    } else {
      throw Exception();
    }
  }
}
