import 'package:shared_preferences/shared_preferences.dart';
import 'package:tdd_clean_architecture_sample/core/constants/token_key.dart';

class TokenStore {
  TokenStore({
    required SharedPreferences sharedPreferences,
  }) : _sharedPreferences = sharedPreferences;

  final SharedPreferences _sharedPreferences;

  Future<String> getToken() async {
    return _sharedPreferences.getString(TokenKey.token) ?? '';
  }

  Future<void> setToken(String token) async {
    await _sharedPreferences.setString(TokenKey.token, token);
  }
}
