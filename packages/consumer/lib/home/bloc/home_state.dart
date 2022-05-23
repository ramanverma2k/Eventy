part of 'home_bloc.dart';

enum HomeStatus { initial, loading, loaded, error }

@immutable
class HomeState extends Equatable {
  const HomeState({
    required this.state,
    required this.popularEvents,
    required this.upcomingEvents,
    required this.savedEvents,
    required this.subscribedEvents,
  });

  final HomeStatus state;
  final List<QueryGetPopularEvents$events>? popularEvents;
  final List<QueryGetUpcomingEvents$events>? upcomingEvents;
  final List<QueryGetSavedEvents$events>? savedEvents;
  final List<QueryGetSubscribedEvents$events>? subscribedEvents;

  HomeState copyWith({
    required HomeStatus state,
    required List<QueryGetPopularEvents$events>? popularEvents,
    required List<QueryGetUpcomingEvents$events>? upcomingEvents,
    required List<QueryGetSavedEvents$events>? savedEvents,
    required List<QueryGetSubscribedEvents$events>? subscribedEvents,
  }) {
    return HomeState(
      state: state,
      popularEvents: popularEvents,
      upcomingEvents: upcomingEvents,
      savedEvents: savedEvents,
      subscribedEvents: subscribedEvents,
    );
  }

  @override
  List<Object?> get props =>
      [state, popularEvents, upcomingEvents, savedEvents];

  /// Returns a string representation of the [HomeState].
  /// This method is used by [toString] method.
  @override
  String toString() => 'HomeState { status: $state }';
}
