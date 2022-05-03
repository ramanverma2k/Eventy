import 'package:shared_preferences/shared_preferences.dart';

/// A [SharedPreferencesStore] implementation that uses [SharedPreferences]
/// to store and retrieve values.
///
/// This class is used to store and retrieve values from the [SharedPreferences]
class SharedPreferencesStore {
  /// Creates a [SharedPreferencesStore] instance.
  ///
  /// Parameter [instance] of type [SharedPreferences] is required.
  const SharedPreferencesStore({required SharedPreferences instance})
      : _instance = instance;

  final SharedPreferences _instance;

  /// Returns the value of the provided key.
  /// If the key is not found, returns null.
  String? getValue(String key) => _instance.getString(key);

  /// Sets the value of the provided key.
  /// If the key is not found, it will be created.
  /// If the value is not null, the key will be created or updated.
  Future<void> setValue(String key, String value) =>
      _instance.setString(key, value);

  /// Removes the value of the provided key.
  /// If the key is not found, nothing happens.
  /// If the value is not null, the key will be removed.
  Future<void> removeValue(String key) => _instance.remove(key);
}
