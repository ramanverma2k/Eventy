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
            savedEvents: [],
            subscribedEvents: [],
          ),
        ) {
    on<HomeDataFetched>((event, emit) async {
      final savedEventIds = localStorageApi.getStringList('savedEvents');
      final userId = localStorageApi.getString('userId');

      emit(
        const HomeState(
          state: HomeStatus.loading,
          upcomingEvents: [],
          popularEvents: [],
          savedEvents: [],
          subscribedEvents: [],
        ),
      );

      final _popularEvents = await databaseRepository.getPopularEvents();
      final _upcomingEvents = await databaseRepository.getUpcomingEvents();
      final _subscribedEvents =
          await databaseRepository.getSubscribedEvents(userId!);

      final _savedEvents =
          await databaseRepository.getSavedEventsById(savedEventIds ?? ['']);

      emit(
        HomeState(
          state: HomeStatus.loaded,
          popularEvents: _popularEvents,
          upcomingEvents: _upcomingEvents,
          savedEvents: _savedEvents ?? [],
          subscribedEvents: _subscribedEvents ?? [],
        ),
      );
    });
  }

  final DatabaseRepository databaseRepository;
  final LocalStorageApi localStorageApi;
}
