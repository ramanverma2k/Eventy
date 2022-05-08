import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// {@template local_storage_api}
/// A wrapper around SharedPreferences api for managing local storage elegantly
/// {@endtemplate}
class LocalStorageApi {
  /// {@macro local_storage_api}
  const LocalStorageApi({required SharedPreferences plugin}) : _plugin = plugin;

  /// Instance of SharedPreferences
  final SharedPreferences _plugin;

  String? _getString(String key) => _plugin.getString(key);

  List<String>? _getStringList(String key) => _plugin.getStringList(key);

  Future<void> _setString(String key, String value) =>
      _plugin.setString(key, value);

  Future<void> _setStringList(String key, List<String> value) =>
      _plugin.setStringList(key, value);

  Future<void> _remove(String key) => _plugin.remove(key);

  /// This is only exposed for testing and shouldn't be used by consumers of
  /// this library.
  @visibleForTesting
  static const kTestingKey = 'testKey';

  /// Function for getting data from local storage using key.
  ///
  /// **key** is the name of value which needs to be stored and should
  /// not be null.
  ///
  /// If the key is not found in local storage, null is returned.
  String? getString(String key) => _getString(key);

  /// Function for getting List of data from local storage using key.
  ///
  /// **key** is the name of value which needs to be stored and should
  /// not be null.
  ///
  /// If the key is not found in local storage, null is returned.
  List<String>? getStringList(String key) => _getStringList(key);

  /// Function for storing data in local storage using key and value.
  ///
  /// **key** is the name of value which needs to be stored and should
  /// not be null.
  ///
  /// **value** is the value to store and and should not be null.
  Future<void> setString(String key, String value) => _setString(key, value);

  /// Function for storing List of data in local storage using key and [List]
  /// of value.
  ///
  /// **key** is the name of value which needs to be stored and should
  /// not be null.
  ///
  /// **value** is the value to store and and should not be null.
  Future<void> setStringList(String key, List<String> value) =>
      _setStringList(key, value);

  /// Function for removing the data from local storage using key.
  ///
  /// **key** is the name of value which needs to be removed and should
  /// not be null.
  Future<void> remove(String key) => _remove(key);
}
