import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomepageBloc>(
      create: (context) => HomepageBloc(),
      child: const HomeView(),
    );
  }
}
