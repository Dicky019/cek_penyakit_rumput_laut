import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageHelper {
  static final prefs = SharedPreferences.getInstance();

  static Future<bool> isOnboardingFinis() async =>
      (await prefs).getBool("key") ?? false;

  static Future<bool> setOnboardingFinis() async =>
      (await prefs).setBool("key", true);
}
