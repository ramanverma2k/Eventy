import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

part 'event_event.dart';
part 'event_state.dart';

class EventBloc extends Bloc<EventEvent, EventState> {
  final GraphQLClient client;

  EventBloc({required this.client}) : super(EventInitial()) {
    on<EventAdd>((event, emit) {
      emit(EventAdded());
    });
  }
}
