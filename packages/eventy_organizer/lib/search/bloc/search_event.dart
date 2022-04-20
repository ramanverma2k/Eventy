part of 'search_bloc.dart';

@immutable
abstract class SearchEvent {}

class SearchEventInitiated extends SearchEvent {
  final String query;

  SearchEventInitiated({required this.query});
}
