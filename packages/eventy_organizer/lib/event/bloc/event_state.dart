part of 'event_bloc.dart';

@immutable
abstract class EventState {}

class EventInitial extends EventState {}

class EventFetched extends EventState {
  final Event myEvents;

  EventFetched({required this.myEvents});
}

class EventAdded extends EventState {}

class EventDeleted extends EventState {}

class EventFailed extends EventState {
  final String message;

  EventFailed({required this.message});
}
