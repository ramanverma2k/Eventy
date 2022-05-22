import 'package:bloc/bloc.dart';
import 'package:database/database.dart';
import 'package:equatable/equatable.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required this.databaseRepository,
    required this.localStorageApi,
  }) : super(
          const HomeState(
            state: HomeStatus.initial,
            popularEvents: [],
            upcomingEvents: [],
          ),
        ) {
    on<HomeDataFetched>((event, emit) async {
      emit(
        const HomeState(
          state: HomeStatus.loading,
          upcomingEvents: [],
          popularEvents: [],
        ),
      );

      final _popularEvents = await databaseRepository.getPopularEvents();
      final _upcomingEvents = await databaseRepository.getUpcomingEvents();

      emit(
        HomeState(
          state: HomeStatus.loaded,
          popularEvents: _popularEvents,
          upcomingEvents: _upcomingEvents,
        ),
      );
    });
  }

  final DatabaseRepository databaseRepository;
  final LocalStorageApi localStorageApi;
}
