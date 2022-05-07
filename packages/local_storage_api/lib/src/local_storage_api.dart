import 'package:shared_preferences/shared_preferences.dart';

/// {@template local_storage_api}
/// A wrapper around SharedPreferences api for managing local storage elegantly
/// {@endtemplate}
class LocalStorageApi {
  /// {@macro local_storage_api}
  const LocalStorageApi({required SharedPreferences plugin}) : _plugin = plugin;

  final SharedPreferences _plugin;
}
