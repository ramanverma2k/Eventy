part of 'event_bloc.dart';

@immutable
abstract class EventState {}

class EventInitial extends EventState {}

class EventAdded extends EventState {}

class EventDeleted extends EventState {}

class EventSearched extends EventState {}

class EventFailed extends EventState {
  final String message;

  EventFailed({required this.message});
}
