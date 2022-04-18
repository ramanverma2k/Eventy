import 'package:eventy_organizer/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EventView extends StatelessWidget {
  const EventView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventBloc, EventState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Event Added"),
                      duration: Duration(seconds: 2),
                    ),
                  );

                  context.read<EventBloc>().add(EventAdd());
                },
                child: const Text("Add event"),
              )
            ],
          ),
        );
      },
    );
  }
}
