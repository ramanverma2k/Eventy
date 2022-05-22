import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:database/database.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:local_storage_api/local_storage_api.dart';
import 'package:meta/meta.dart';

part 'create_event_event.dart';
part 'create_event_state.dart';

class CreateEventBloc extends Bloc<CreateEventEvent, CreateEventState> {
  CreateEventBloc(
      {required this.databaseRepository, required this.localStorageApi})
      : super(const CreateEventState(CreateEventStatus.initial)) {
    on<CreateEvent>(_createEvent);
  }

  Future<void> _createEvent(
    CreateEvent event,
    Emitter<CreateEventState> emit,
  ) async {
    String? image;
    String? bannerImage;
    final userId = localStorageApi.getString('userId')!;

    if (event.image != null) {
      emit(const CreateEventState(CreateEventStatus.creating));
      final storageRef = FirebaseStorage.instance.ref();
      final eventImageRef = storageRef.child(event.image!.path.split('/').last);
      final bannerImageRef =
          storageRef.child(event.bannerImage!.path.split('/').last);

      await eventImageRef.putFile(event.image!);
      await bannerImageRef.putFile(event.bannerImage!);

      image = await eventImageRef.getDownloadURL();
      bannerImage = await bannerImageRef.getDownloadURL();
    }

    final _result = await databaseRepository.createEvent(
      title: event.title,
      description: event.description,
      image: image!,
      bannerImage: bannerImage!,
      startDate: event.startDate,
      endDate: event.endDate,
      location: event.location,
      category: event.category,
      organizer: userId,
      createdAt: DateTime.now().toString(),
    );

    if (_result != null) {
      emit(const CreateEventState(CreateEventStatus.created));
    } else {
      emit(const CreateEventState(CreateEventStatus.error));
    }
  }

  final DatabaseRepository databaseRepository;
  final LocalStorageApi localStorageApi;
}
