import 'package:cryptohub/core/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  Future<SharedPreferences> _getPrefs() async => await SharedPreferences.getInstance();

  Future<void> saveToken(String token) async {
    final prefs = await _getPrefs();
    await prefs.setString(AppConstants.tokenKey, token);
  }

  Future<String?> getToken() async {
    final prefs = await _getPrefs();
    return prefs.getString(AppConstants.tokenKey);
  }

  Future<void> clearToken() async {
    final prefs = await _getPrefs();
    await prefs.remove(AppConstants.tokenKey);
  }
}