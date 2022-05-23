import 'package:bloc/bloc.dart';
import 'package:database/database.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc({required this.databaseRepository})
      : super(const SearchState(SearchStatus.initiated, [], [])) {
    on<SearchInitiated>((event, emit) async {
      try {
        await Future.delayed(const Duration(seconds: 2), () async {
          if (event.filters.isEmpty) {
            final searchResult =
                await databaseRepository.getEventsBySearch(event.query);

            emit(
              SearchState(
                SearchStatus.completed,
                searchResult,
                const [],
              ),
            );
          } else {
            final searchResult = await databaseRepository
                .getEventsBySearchWithFilters(event.query, event.filters);

            emit(
              SearchState(
                SearchStatus.completed,
                const [],
                searchResult,
              ),
            );
          }
        });
      } catch (e) {
        emit(const SearchState(SearchStatus.error, [], []));
      }
    });
  }

  final DatabaseRepository databaseRepository;
}
