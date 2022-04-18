part of 'event_bloc.dart';

@immutable
abstract class EventEvent {}

class EventAdd extends EventEvent {}

class EventDelete extends EventEvent {
  final String id;

  EventDelete({required this.id});
}

class EventSearch extends EventEvent {
  final String query;

  EventSearch({required this.query});
}
