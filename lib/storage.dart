import 'package:market/models/CustomUser.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage {
  static Future<void> createPrefs(String phone) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString('phone', phone);
  }

  static Future<void> createPrefsAsGuest() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setBool('isGuest', true);
  }

  static Future<void> loadUser() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    CustomUser.isGuest = sharedPreferences.getBool('isGuest') ?? false;
    CustomUser.phone = sharedPreferences.getString("phone") ?? "";
  }
}
