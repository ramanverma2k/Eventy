import 'package:bloc/bloc.dart';
import 'package:eventy_db/queries/queries.dart';
import 'package:eventy_organizer/models/event_model.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  final GraphQLClient client;

  HomepageBloc({required this.client}) : super(HomepageInitial()) {
    on<HomepageDataFetchEvent>((event, emit) async {
      final now = DateTime.now();

      final date = DateTime(now.year, now.month, now.day)
          .toString()
          .replaceAll("00:00:00.000", "");

      final QueryOptions _popularEventsOptions =
          QueryOptions(document: gql(Queries.getPopularEvents));

      final QueryOptions _ongoingEventsOptions =
          QueryOptions(document: gql(Queries.getOngoingEvents), variables: {
        "curr_date": date,
      });

      final QueryOptions _upcomingEventsOptions =
          QueryOptions(document: gql(Queries.getUpcomingEvents), variables: {
        "curr_date": date,
      });

      try {
        final popularEventsResult = await client.query(_popularEventsOptions);
        final ongoingEventsResult = await client.query(_ongoingEventsOptions);
        final upcomingEventsResult = await client.query(_upcomingEventsOptions);

        if (!popularEventsResult.hasException &&
            !ongoingEventsResult.hasException &&
            !upcomingEventsResult.hasException) {
          emit(
            HomepageDataFetched(
              popularEvents: Event.fromJson(popularEventsResult.data!),
              ongoingEvents: Event.fromJson(ongoingEventsResult.data!),
              upcomingEvents: Event.fromJson(ongoingEventsResult.data!),
            ),
          );
        } else {
          emit(HomepageDataFailed(message: "Error fetching data"));
        }
      } catch (e) {
        emit(HomepageDataFailed(message: e.toString()));
      }
    });
  }
}
