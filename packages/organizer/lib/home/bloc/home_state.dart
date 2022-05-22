part of 'home_bloc.dart';

enum HomeStatus { initial, loading, loaded, error }

@immutable
class HomeState extends Equatable {
  const HomeState({
    required this.state,
    required this.popularEvents,
    required this.upcomingEvents,
  });

  final HomeStatus state;
  final List<QueryGetPopularEvents$events>? popularEvents;
  final List<QueryGetUpcomingEvents$events>? upcomingEvents;

  HomeState copyWith({
    required HomeStatus state,
    required List<QueryGetPopularEvents$events>? popularEvents,
    required List<QueryGetUpcomingEvents$events>? upcomingEvents,
  }) {
    return HomeState(
      state: state,
      popularEvents: popularEvents,
      upcomingEvents: upcomingEvents,
    );
  }

  @override
  List<Object?> get props => [state];

  /// Returns a string representation of the [HomeState].
  /// This method is used by [toString] method.
  @override
  String toString() => 'HomeState { status: $state }';
}
