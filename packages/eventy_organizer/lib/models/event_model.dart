import 'dart:convert';

import 'package:eventy_organizer/models/user_model.dart';

class Event {
  Event({
    required this.events,
  });

  final List<EventElement> events;

  factory Event.fromRawJson(String str) => Event.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Event.fromJson(Map<String, dynamic> json) => Event(
        events: List<EventElement>.from(
            json["event"].map((x) => EventElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "event": List<dynamic>.from(events.map((x) => x.toJson())),
      };
}

class EventElement {
  EventElement({
    required this.address,
    required this.bannerImage,
    required this.description,
    required this.endDate,
    required this.id,
    required this.image,
    required this.location,
    required this.name,
    required this.user,
    required this.startDate,
    required this.eventType,
    required this.eventManagers,
    required this.attendants,
    required this.attendantsCount,
  });

  final String address;
  final String bannerImage;
  final String description;
  final DateTime endDate;
  final String id;
  final String image;
  final Location location;
  final String name;
  final User user;
  final DateTime startDate;
  final String eventType;
  final List<EventManager>? eventManagers;
  final List<Attendants>? attendants;
  final int attendantsCount;

  factory EventElement.fromRawJson(String str) =>
      EventElement.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventElement.fromJson(Map<String, dynamic> json) => EventElement(
        address: json["address"],
        bannerImage: json["banner_image"],
        description: json["description"],
        endDate: DateTime.parse(json["end_date"]),
        id: json["id"],
        image: json["image"],
        location: Location.fromJson(json["location"]),
        name: json["name"],
        user: User.fromJson(json["user"]),
        startDate: DateTime.parse(json["start_date"]),
        eventType: json["event_type"]["type_name"],
        eventManagers: List<EventManager>.from(
            json["event_managers"].map((x) => EventManager.fromJson(x))),
        attendants: List<Attendants>.from(
            json["attendants"].map((x) => Attendants.fromJson(x))),
        attendantsCount: json["attendants_aggregate"]["aggregate"]["count"],
      );

  Map<String, dynamic> toJson() => {
        "address": address,
        "banner_image": bannerImage,
        "description": description,
        "end_date": endDate.toIso8601String(),
        "id": id,
        "image": image,
        "location": location.toJson(),
        "name": name,
        "user": user,
        "start_date": startDate.toIso8601String(),
        "event_type": eventType,
        "event_managers": eventManagers,
        "attendants": attendants,
        "attendants_count": attendantsCount,
      };
}

class EventManager {
  EventManager({
    required this.user,
  });

  final Manager user;

  factory EventManager.fromRawJson(String str) =>
      EventManager.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory EventManager.fromJson(Map<String, dynamic> json) => EventManager(
        user: Manager.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class Manager {
  Manager({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.contactNo,
  });

  final String id;
  final String firstName;
  final String lastName;
  final String contactNo;

  factory Manager.fromRawJson(String str) => Manager.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Manager.fromJson(Map<String, dynamic> json) => Manager(
        id: json["id"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        contactNo: json["contact_no"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "first_name": firstName,
        "last_name": lastName,
        "contact_no": contactNo,
      };
}

class Attendants {
  Attendants({
    required this.user,
  });

  final Attendant user;

  factory Attendants.fromRawJson(String str) =>
      Attendants.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attendants.fromJson(Map<String, dynamic> json) => Attendants(
        user: Attendant.fromJson(json["user"]),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
      };
}

class Attendant {
  Attendant({
    required this.firstName,
    required this.lastName,
    required this.image,
  });

  final String firstName;
  final String lastName;
  final String image;

  factory Attendant.fromRawJson(String str) =>
      Attendant.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Attendant.fromJson(Map<String, dynamic> json) => Attendant(
        firstName: json["first_name"],
        lastName: json["last_name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
      };
}

class Location {
  Location({
    required this.lat,
    required this.lon,
  });

  final double lat;
  final double lon;

  factory Location.fromRawJson(String str) =>
      Location.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"] ?? 0.0,
        lon: json["lon"] ?? 0.0,
      );

  Map<String, dynamic> toJson() => {
        "lat": lat,
        "lon": lon,
      };
}
