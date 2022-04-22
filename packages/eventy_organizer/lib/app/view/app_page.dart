import 'package:eventy_organizer/app/app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
class AppPage extends StatelessWidget {
  const AppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        return MaterialApp(
          theme: state.themeData,
          scrollBehavior: MyCustomScrollBehavior(),
          home: const AppView(),
        );
      },
    );
  }
}
