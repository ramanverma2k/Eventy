import 'package:bloc/bloc.dart';
import 'package:eventy_db/mutations/mutations.dart';
import 'package:eventy_db/queries/queries.dart';
import 'package:eventy_organizer/models/event_model.dart';
import 'package:eventy_organizer/models/user_model.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final GraphQLClient client;

  EventBloc({required this.client}) : super(EventInitial()) {
    on<FetchMyEvents>((event, emit) async {
      final user = GetIt.I.get<User>(instanceName: "user");

      final SubscriptionOptions _myEventsOptions =
          SubscriptionOptions(document: gql(Queries.getMyEvents), variables: {
        "organizer": user.id,
      });

      try {
        final myEventsResult = client.subscribe(_myEventsOptions);

        await emit.forEach(myEventsResult,
            onData: (QueryResult<Object?> event) =>
                EventFetched(myEvents: Event.fromJson(event.data!)));
      } catch (e) {
        emit(EventFailed(message: e.toString()));
      }
    });

    on<EventAdd>((event, emit) async {
      final user = GetIt.I.get<User>(instanceName: "user");

      final QueryOptions _eventTypeByIdOptions =
          QueryOptions(document: gql(Queries.getEventTypeIdByName), variables: {
        "type_name": event.typeName,
      });

      final result = await client.query(_eventTypeByIdOptions);

      final MutationOptions _createEventOptions = MutationOptions(
        document: gql(Mutations.createEvent),
        variables: {
          "id": const Uuid().v4(),
          "name": event.name,
          "start_date": event.startDate.toIso8601String(),
          "end_date": event.endDate.toIso8601String(),
          "address": event.address,
          "location": event.location,
          "description": event.description,
          "type_id": result.data!["event_type"][0]["id"],
          "banner_image": event.bannerImage,
          "image": event.image,
          "organizer": user.id,
        },
      );

      try {
        final result = await client.mutate(_createEventOptions);

        if (!result.hasException) {
          emit(EventAdded());
        } else {
          emit(EventFailed(message: "Error fetching data"));
        }
      } catch (e) {
        emit(EventFailed(message: e.toString()));
      }
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
