import 'package:eventy_organizer/event/event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class EventPage extends StatelessWidget {
  const EventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLConsumer(
      builder: (GraphQLClient client) {
        return BlocProvider<EventBloc>(
          create: (context) => EventBloc(client: client)..add(FetchMyEvents()),
          child: const EventView(),
        );
      },
    );
  }
}
