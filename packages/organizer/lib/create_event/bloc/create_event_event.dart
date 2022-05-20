part of 'create_event_bloc.dart';

@immutable
abstract class CreateEventEvent extends Equatable {
  const CreateEventEvent();
}

class CreateEvent extends CreateEventEvent {
  /// Initialize with event details.
  const CreateEvent({
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.bannerImage,
    required this.location,
    required this.startDate,
    required this.endDate,
  });

  final String title;
  final String description;
  final int category;
  final File? image;
  final File? bannerImage;
  final Map<String, dynamic> location;
  final String startDate;
  final String endDate;

  @override
  List<Object?> get props => [
        title,
        description,
        category,
        image,
        bannerImage,
        location,
        startDate,
        endDate,
      ];
}
