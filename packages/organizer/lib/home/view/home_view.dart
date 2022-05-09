import 'package:eventy_organizer/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
        actions: const [
          ToggleThemeWidget(),
        ],
      ),
      body: Center(
        child: Text(Theme.of(context).brightness.name),
      ),
    );
  }
}

class ToggleThemeWidget extends StatelessWidget {
  const ToggleThemeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeData>(
      builder: (context, state) {
        return IconButton(
          onPressed: () => context.read<ThemeBloc>().add(
                ThemeToggle(),
              ),
          icon: const Icon(Icons.brightness_6_outlined),
        );
      },
    );
  }
}
