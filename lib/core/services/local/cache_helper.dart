import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences.get(key);
  }

  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) {
      return await sharedPreferences.setString(key, value);
    }
    if (value is int) {
      return await sharedPreferences.setInt(key, value);
    }
    if (value is bool) {
      return await sharedPreferences.setBool(key, value);
    }

    if (value is List<String>) {
      return await sharedPreferences.setStringList(key, value);
    }

    return await sharedPreferences.setDouble(key, value);
  }

  static Future<bool> removeData({
    required String key,
  }) async {
    return await sharedPreferences.remove(key);
  }

  static Future<bool> replaceData({
    required String key,
    required dynamic value,
  }) async {
    return await removeData(key: key).then((val) async {
      return await sharedPreferences.setString(key, value);
    });
  }

  static Future<bool> clearData() async {
    return await sharedPreferences.clear();
  }
}

// /// here for save user information

// saveUserInformation(AccountEntity response) async {
//   CacheHelper.saveData(
//       key: SharedPrefConst.profileImagePath, value: response.image);
//   CacheHelper.saveData(
//       key: SharedPrefConst.profileNamePath, value: response.name);
//   CacheHelper.saveData(
//       key: SharedPrefConst.profileEmailPath, value: response.email);

//   CacheHelper.saveData(
//       key: SharedPrefConst.profileNumberPath, value: response.number);
//   if (response.wallet != null) {
//     CacheHelper.saveData(
//         key: SharedPrefConst.profileWallet, value: response.wallet);
//   }

//   CacheHelper.saveData(
//       key: SharedPrefConst.profileNotificationState,
//       value: response.activeNotify == 1 ? true : false);
// }
