part of 'event_bloc.dart';

@immutable
abstract class EventEvent {}

class FetchMyEvents extends EventEvent {}

class EventAdd extends EventEvent {
  EventAdd(
      {required this.name,
      required this.address,
      required this.description,
      required this.startDate,
      required this.endDate,
      required this.location,
      required this.image,
      required this.bannerImage,
      required this.typeName});

  final String name;
  final String address;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final Map<String, dynamic> location;
  final String? image;
  final String? bannerImage;
  final String typeName;
}

class EventDelete extends EventEvent {
  final String id;

  EventDelete({required this.id});
}

class EventSearch extends EventEvent {
  final String query;

  EventSearch({required this.query});
}
