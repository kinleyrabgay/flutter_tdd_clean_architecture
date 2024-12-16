import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_clean_architecture_sample/core/constants/cache_key.dart';

class CacheStore {
  CacheStore({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  Future<bool> checkIfFirstTimer() async {
    return _sharedPreferences.getBool(CacheKey.cacheFirstTimer) ?? true;
  }

  Future<void> cacheFirstTimer() async {
    await _sharedPreferences.setBool(CacheKey.cacheFirstTimer, true);
  }

  Future<void> clearCache() async {
    await _sharedPreferences.clear();
  }
}
