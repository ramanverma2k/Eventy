import 'package:eventy_organizer/home/home.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('HomeView', () {
    testWidgets('renders HomeView', (tester) async {
      await tester.pumpApp(
        const HomeView(),
      );
    });
  });
}
