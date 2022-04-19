// To parse this JSON data, do
//
//     final event = eventFromJson(jsonString);

import 'dart:convert';

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
    required this.organizer,
    required this.startDate,
  });

  final String address;
  final String bannerImage;
  final String description;
  final DateTime endDate;
  final String id;
  final String image;
  final Location location;
  final String name;
  final String organizer;
  final DateTime startDate;

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
        organizer: json["organizer"],
        startDate: DateTime.parse(json["start_date"]),
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
        "organizer": organizer,
        "start_date": startDate.toIso8601String(),
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
