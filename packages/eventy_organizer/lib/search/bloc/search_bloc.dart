import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:eventy_db/queries/queries.dart';
import 'package:eventy_organizer/models/event_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final GraphQLClient client;
  SearchBloc({required this.client}) : super(SearchInitial()) {
    on<SearchEventInitiated>((event, emit) async {
      await Future.delayed(const Duration(seconds: 2), () async {
        final QueryOptions _searchEventsOptions =
            QueryOptions(document: gql(Queries.getEventsBySearch), variables: {
          "query": event.query,
        });

        try {
          final searchResult = await client.query(_searchEventsOptions);

          if (!searchResult.hasException) {
            final searchedEvents = Event.fromJson(searchResult.data!);
            emit(SearchCompleted(result: searchedEvents.events));
          } else {
            emit(SearchFailed(message: searchResult.exception.toString()));
          }
        } catch (e) {
          emit(SearchFailed(message: e.toString()));
        }
      });
    });
  }
}
