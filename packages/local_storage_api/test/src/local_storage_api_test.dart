import 'package:flutter_test/flutter_test.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:mocktail/mocktail.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

void main() {
  group('LocalStorageApi', () {
    late SharedPreferences plugin;

    setUp(() {
      plugin = MockSharedPreferences();
      when(() => plugin.setString(any(), any())).thenAnswer((_) async => true);
    });

    test('can be instantiated', () {
      expect(LocalStorageApi(plugin: plugin), isNotNull);
    });

    test('returns null if the key is not found', () {
      when(() => plugin.getString(any())).thenReturn(null);

      final localStorageApi = LocalStorageApi(plugin: plugin);

      expect(localStorageApi.getString('testKey'), isNull);
    });

    test('returns a String if key is found', () {
      when(() => plugin.getString(any())).thenReturn('testValue');

      final localStorageApi = LocalStorageApi(plugin: plugin);

      expect(localStorageApi.getString(LocalStorageApi.kTestingKey), isNotNull);

      verify(
        () => plugin.getString(LocalStorageApi.kTestingKey),
      ).called(1);
    });

    test('returns a List<String> if key is found', () {
      when(() => plugin.getStringList(any()))
          .thenReturn(['testValue', 'testValue2']);

      final localStorageApi = LocalStorageApi(plugin: plugin);

      expect(
        localStorageApi.getStringList(LocalStorageApi.kTestingKey),
        isNotNull,
      );

      expect(
        localStorageApi.getStringList(LocalStorageApi.kTestingKey),
        equals(['testValue', 'testValue2']),
      );

      verify(
        () => plugin.getStringList(LocalStorageApi.kTestingKey),
      ).called(2);
    });
  });
}
