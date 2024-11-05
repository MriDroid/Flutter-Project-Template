import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/injection_container.dart';

class SharedPreferencesHelper {
  static final _sharedPreferences = injector<SharedPreferences>();
  static const _flutterSecureStorage = FlutterSecureStorage();
  static T get<T>(String key) => _sharedPreferences.get(key) as T;
  static Future<bool> set<T>(String key, T value) async {
    if (value is bool) return await _sharedPreferences.setBool(key, value);
    if (value is int) return await _sharedPreferences.setInt(key, value);
    if (value is double) return await _sharedPreferences.setDouble(key, value);
    if (value is String) return await _sharedPreferences.setString(key, value);
    if (value is List<String>) {
      return await _sharedPreferences.setStringList(key, value);
    }
    return false;
  }

  static Future<bool> remove(String key) async =>
      await _sharedPreferences.remove(key);
  static Future<bool> clear() async => await _sharedPreferences.clear();
  static bool containsKey(String key) => _sharedPreferences.containsKey(key);

  static Future<void> setSecuredString(String key, String value) async =>
      await _flutterSecureStorage.write(key: key, value: value);

  static Future<String?> getSecuredString(String key) async =>
      await _flutterSecureStorage.read(key: key) ?? '';

  static Future<void> removeSecuredData(String key) async =>
      await _flutterSecureStorage.delete(key: key);

  static Future<void> clearAllSecuredData() async =>
      await _flutterSecureStorage.deleteAll();
}
