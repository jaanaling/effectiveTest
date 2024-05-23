import 'package:effective_test/utils/cache/cache.dart';

Future<void> setCache(String key, String value) async {
  final cache = await Cache.instance();
  cache.setString(key, value);
}
