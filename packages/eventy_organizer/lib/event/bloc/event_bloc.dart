import 'package:bloc/bloc.dart';
import 'package:eventy_db/mutations/mutations.dart';
import 'package:eventy_db/queries/queries.dart';
import 'package:eventy_organizer/models/event_model.dart';
import 'package:eventy_organizer/models/user_model.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final GraphQLClient client;

  EventBloc({required this.client}) : super(EventInitial()) {
    on<FetchMyEvents>((event, emit) async {
      final user = GetIt.I.get<User>(instanceName: "user");

      final QueryOptions _myEventsOptions =
          QueryOptions(document: gql(Queries.getMyEvents), variables: {
        "organizer": user.id,
      });

      try {
        final myEventsResult = await client.query(_myEventsOptions);

        if (!myEventsResult.hasException) {
          emit(
            EventFetched(
              myEvents: Event.fromJson(myEventsResult.data!),
            ),
          );
        } else {
          emit(EventFailed(message: "Error fetching data"));
        }
      } catch (e) {
        emit(EventFailed(message: e.toString()));
      }
    });

    on<EventAdd>((event, emit) {
      emit(EventAdded());
    });

    on<EventDelete>((event, emit) async {
      final MutationOptions _deleteMyEventByIdOptions =
          MutationOptions(document: gql(Mutations.deleteEventById), variables: {
        "id": event.id,
      });

      try {
        final result = await client.mutate(_deleteMyEventByIdOptions);

        if (!result.hasException) {
          emit(EventDeleted());
        } else {
          emit(EventFailed(message: "Error fetching data"));
        }
      } catch (e) {
        emit(EventFailed(message: e.toString()));
      }
    });
  }
}
