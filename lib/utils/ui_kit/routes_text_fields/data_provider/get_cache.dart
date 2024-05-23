import 'package:effective_test/utils/cache/cache.dart';

Future<String> getCache(String key) async {
  final cache = await Cache.instance();
  return cache.getString(key);
}
