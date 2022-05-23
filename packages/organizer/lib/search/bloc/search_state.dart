part of 'search_bloc.dart';

enum SearchStatus {
  initiated,
  completed,
  error,
}

@immutable
class SearchState extends Equatable {
  /// Creates a [SearchState] instance with
  /// [SearchStatus.initiated] state.
  const SearchState(
    this.state,
    this.searchResult,
    this.searchResultsWithFilters,
  );

  /// SearchState status of the [SearchBloc].
  final SearchStatus state;

  final List<QueryGetEventsBySearch$events>? searchResult;
  final List<QueryGetEventsBySearchWithFilters$events>?
      searchResultsWithFilters;

  /// Copy with method that returns a new [SearchState]
  SearchState copyWith({
    required SearchStatus state,
    required List<QueryGetEventsBySearch$events> searchResult,
    required List<QueryGetEventsBySearchWithFilters$events>
        searchResultsWithFilters,
  }) {
    return SearchState(state, searchResult, searchResultsWithFilters);
  }

  @override
  List<Object?> get props => [state, searchResult, searchResultsWithFilters];
}
