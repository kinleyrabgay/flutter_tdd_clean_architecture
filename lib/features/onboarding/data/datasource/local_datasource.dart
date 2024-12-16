import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_clean_architecture_sample/core/constants/cache_key.dart';
import 'package:tdd_clean_architecture_sample/core/errors/exception.dart';

abstract class OnboardingLocalDatasource {
  const OnboardingLocalDatasource();
  Future<void> cacheFirstTimer();
  Future<bool> checkIfUserIsFirstTimer();
}

class OnboardingLocalDatasourceImplementation
    extends OnboardingLocalDatasource {
  const OnboardingLocalDatasourceImplementation({
    required SharedPreferences prefs,
  }) : _prefs = prefs;

  final SharedPreferences _prefs;

  @override
  Future<void> cacheFirstTimer() async {
    try {
      await _prefs.setBool(CacheKey.cacheFirstTimer, false);
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }

  @override
  Future<bool> checkIfUserIsFirstTimer() async {
    try {
      return _prefs.getBool(CacheKey.cacheFirstTimer) ?? true;
    } catch (e) {
      throw CacheException(message: e.toString());
    }
  }
}
