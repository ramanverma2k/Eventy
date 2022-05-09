import 'package:eventy_organizer/home/home.dart';
import 'package:eventy_organizer/theme/theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helpers/pump_app.dart';

void main() {
  group('HomeView', () {
    testWidgets('renders ToggleThemeWidget', (tester) async {
      await tester.pumpApp(
        BlocProvider(
          create: (context) => ThemeBloc(),
          child: const HomeView(),
        ),
      );
      expect(find.byType(ToggleThemeWidget), findsOneWidget);
    });
  });
}
