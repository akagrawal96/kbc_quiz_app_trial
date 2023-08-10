import 'package:shared_preferences/shared_preferences.dart';

class LocalDB {
  static const uidKey = "uidKey";

  static Future<bool> saveUserID(String uid) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(uidKey, uid);
  }

  static Future<String?> getUserId() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(uidKey);
  }
}
