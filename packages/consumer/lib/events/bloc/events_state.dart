part of 'events_bloc.dart';

enum EventStatus {
  initial,
  saved,
  removed,
}

@immutable
class EventsState extends Equatable {
  const EventsState(this.state);

  final EventStatus state;

  EventsState copyWith({required EventStatus state}) {
    return EventsState(state);
  }

  @override
  List<Object?> get props => [state];
}
