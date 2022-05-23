part of 'events_bloc.dart';

@immutable
abstract class EventsEvent extends Equatable {}

class EventSaved extends EventsEvent {
  EventSaved(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}

class EventCheck extends EventsEvent {
  EventCheck(this.id);

  final String id;

  @override
  List<Object?> get props => [id];
}
