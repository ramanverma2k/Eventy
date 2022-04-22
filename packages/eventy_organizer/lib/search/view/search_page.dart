import 'package:eventy_organizer/search/search.dart';
import 'package:eventy_organizer/widgets/view_all_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({required Key key, required this.query}) : super(key: key);

  final String query;

  @override
  Widget build(BuildContext context) {
    return GraphQLConsumer(builder: (GraphQLClient client) {
      return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(client: client)..add(SearchEventInitiated(query: query)),
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state is SearchCompleted) {
              return ViewAllPage(
                key: Key("$key complete"),
                title: "Search Results for \"$query\"",
                data: state.result.events,
              );
            }

            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
        ),
      );
    });
  }
}
