import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:meta/meta.dart';

part 'events_event.dart';
part 'events_state.dart';

class EventsBloc extends Bloc<EventsEvent, EventsState> {
  EventsBloc({
    required this.localStorageApi,
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

          print('removed: $saved');

          emit(const EventsState(EventStatus.removed));
        } else {
          saved.add(event.id);
          await localStorageApi.setStringList(
            'savedEvents',
            saved,
          );

          print(saved);

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
  }

  final LocalStorageApi localStorageApi;
}
