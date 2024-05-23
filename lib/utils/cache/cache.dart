import 'package:shared_preferences/shared_preferences.dart';

class Cache {
  final SharedPreferences prefs;

  Cache(this.prefs);

  static Future<Cache> instance() async {
    return Cache(await SharedPreferences.getInstance());
  }

  void setString(String key, String value) {
    prefs.setString(key, value);
  }

  String getString(String key) {
    return prefs.getString(key) ?? '';
  }
}
