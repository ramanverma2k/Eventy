// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:organizer/app/app.dart';
import 'package:organizer/bootstrap.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  bootstrap(() async {
    final _sharedPreferences = await SharedPreferences.getInstance();

    return App(
      sharedPreferences: _sharedPreferences,
    );
  });
}
