import 'package:eventy_organizer/homepage/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLConsumer(
      builder: (GraphQLClient client) {
        return BlocProvider<HomepageBloc>(
          create: (context) => HomepageBloc(client: client)..add(HomepageDataFetchEvent()),
          child: const HomeView(),
        );
      },
    );
  }
}
