part of 'homepage_bloc.dart';

@immutable
abstract class HomepageEvent {}

class HomepageDataFetchEvent extends HomepageEvent {}

class HomepageSearchEvent extends HomepageEvent {
  final String query;

  HomepageSearchEvent({required this.query});
}
