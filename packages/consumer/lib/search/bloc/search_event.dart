part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable {
  const SearchEvent();
}

class SearchInitiated extends SearchEvent {
  const SearchInitiated({required this.query, required this.filters});

  final String query;
  final List<String> filters;

  @override
  List<Object?> get props => [query, filters];
}
