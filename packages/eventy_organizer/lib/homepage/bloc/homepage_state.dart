part of 'homepage_bloc.dart';

@immutable
abstract class HomepageState {}

class HomepageInitial extends HomepageState {}

class HomepageDataFetched extends HomepageState {
  final Event popularEvents;
  final Event ongoingEvents;
  final Event upcomingEvents;

  HomepageDataFetched(
      {required this.ongoingEvents,
      required this.upcomingEvents,
      required this.popularEvents});
}

class HomepageDataFailed extends HomepageState {
  final String message;

  HomepageDataFailed({required this.message});
}
