part of 'homepage_bloc.dart';

@immutable
abstract class HomepageState {}

class HomepageInitial extends HomepageState {}

class HomepageDataFetched extends HomepageState {
  final List<EventElement> myEvents;
  final List<EventElement> popularEvents;
  final List<EventElement> ongoingEvents;
  final List<EventElement> upcomingEvents;

  HomepageDataFetched(
      {required this.myEvents,
      required this.popularEvents,
      required this.ongoingEvents,
      required this.upcomingEvents});
}

class HomepageDataFailed extends HomepageState {
  final String message;

  HomepageDataFailed({required this.message});
}
