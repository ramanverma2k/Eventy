// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:database/database.dart';
import 'package:eventy_consumer/app/app.dart';
import 'package:eventy_consumer/counter/counter.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:mocktail/mocktail.dart';

class MockSharedPreferences extends Mock implements SharedPreferences {}

class MockGraphQLClient extends Mock implements GraphQLClient {}

void main() {
  late SharedPreferences sharedPreferences;
  late GraphQLClient graphqlClient;

  setUp(() {
    sharedPreferences = MockSharedPreferences();
    graphqlClient = MockGraphQLClient();
  });
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(
        App(
          sharedPreferences: sharedPreferences,
          graphqlClient: graphqlClient,
        ),
      );
      expect(find.byType(CounterPage), findsOneWidget);
    });
  });
}
