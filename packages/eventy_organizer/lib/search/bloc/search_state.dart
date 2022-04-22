part of 'search_bloc.dart';

@immutable
abstract class SearchState {}

class SearchInitial extends SearchState {}

class SearchCompleted extends SearchState {
  final Event result;

  SearchCompleted({required this.result});
}

class SearchFailed extends SearchState {
  final String message;

  SearchFailed({required this.message});
}
