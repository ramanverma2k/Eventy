import 'package:bloc/bloc.dart';
import 'package:database/database.dart';
import 'package:equatable/equatable.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:meta/meta.dart';

part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc({
    required this.localStorageApi,
    required this.databaseRepository,
  }) : super(const EventsState(EventStatus.initial)) {
    on<EventCheck>((event, emit) async {
      final saved = localStorageApi.getStringList('savedEvents');
      if (saved != null) {
        if (saved.contains(event.id)) {
          emit(const EventsState(EventStatus.saved));
        } else {
          emit(const EventsState(EventStatus.removed));
        }
      }
    });

    on<EventSaved>((event, emit) async {
      final saved = localStorageApi.getStringList('savedEvents');
      if (saved != null) {
        if (saved.contains(event.id)) {
          saved.remove(event.id);
          await localStorageApi.setStringList(
            'savedEvents',
            saved,
          );

          emit(const EventsState(EventStatus.removed));
        } else {
          saved.add(event.id);
          await localStorageApi.setStringList(
            'savedEvents',
            saved,
          );

          emit(const EventsState(EventStatus.saved));
        }
      } else {
        final saved = [event.id];
        await localStorageApi.setStringList(
          'savedEvents',
          saved,
        );

        emit(const EventsState(EventStatus.saved));
      }
    });

    on<EventJoined>((event, emit) async {
      final userId = localStorageApi.getString('userId');

      await databaseRepository.joinEvent(event.id, userId!);
    });
  }

  final LocalStorageApi localStorageApi;
  final DatabaseRepository databaseRepository;
}
