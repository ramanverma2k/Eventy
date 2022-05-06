import 'package:flutter/material.dart';

/// The initial page of the application when it is launched.
class SplashPage extends StatelessWidget {
  /// Constructs the initial page of the application.
  const SplashPage({Key? key}) : super(key: key);

  /// A static route method that returns the initial page as MaterialPageRoute.
  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const SplashPage());
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
