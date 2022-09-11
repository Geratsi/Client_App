
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static setString(String key, String value) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setString(key, value);
  }

  static setInt(String name, int data) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt(name, data);
  }

  static Future<String?> getString(String key) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getString(key);
  }

  static Future<int?> getInt(String name) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getInt(name);
  }

  static remove(String key) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.remove(key);
  }
}

class EncryptedStorage {
  static setString(String key, String value) async {
    const FlutterSecureStorage es = FlutterSecureStorage();
    await es.write(key: key, value: value);
  }

  static Future<String?> get(String key) async {
    const FlutterSecureStorage es = FlutterSecureStorage();
    return await es.read(key: key);
  }

  static remove(String key) async {
    const FlutterSecureStorage es = FlutterSecureStorage();
    return await es.delete(key: key);
  }
}
