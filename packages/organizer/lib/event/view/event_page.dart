import 'package:flutter/material.dart';
import 'package:organizer/event/event.dart';

class CreateEventPage extends StatelessWidget {
  const CreateEventPage({Key? key}) : super(key: key);

  static Route route() {
    return MaterialPageRoute<void>(builder: (_) => const CreateEventPage());
  }

  @override
  Widget build(BuildContext context) {
    return const CreateEventView();
  }
}
