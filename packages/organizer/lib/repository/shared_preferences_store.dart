import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesStore {
  const SharedPreferencesStore({required SharedPreferences instance})
      : _instance = instance;

  final SharedPreferences _instance;

  String? getValue(String key) => _instance.getString(key);
  Future<void> setValue(String key, String value) =>
      _instance.setString(key, value);
}
