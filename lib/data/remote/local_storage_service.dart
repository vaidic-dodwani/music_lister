import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  static Future<void> addString(String key, String data) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString(data, key);
  }

  static Future<String?> getString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  static Future<void> removeString(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }
}
