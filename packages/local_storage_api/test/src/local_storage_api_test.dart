// ignore_for_file: prefer_const_constructors
import 'package:flutter_test/flutter_test.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:mocktail/mocktail.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MockSharedPrefrences extends Mock implements SharedPreferences {}

void main() {
  group('LocalStorageApi', () {
    test('can be instantiated', () {
      expect(LocalStorageApi(plugin: MockSharedPrefrences()), isNotNull);
    });
  });
}
