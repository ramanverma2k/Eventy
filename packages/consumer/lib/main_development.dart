// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:database/database.dart';
import 'package:eventy_consumer/app/app.dart';
import 'package:eventy_consumer/bootstrap.dart';
import 'package:eventy_consumer/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:local_storage_api/local_storage_api.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  bootstrap(() async {
    final _sharedPreferences = await SharedPreferences.getInstance();

    final _client = GraphQLClient(
      link: HttpLink('http://192.168.1.13:8080/v1/graphql'),
      cache: GraphQLCache(),
    );

    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return App(
      sharedPreferences: _sharedPreferences,
      graphqlClient: _client,
    );
  });
}
