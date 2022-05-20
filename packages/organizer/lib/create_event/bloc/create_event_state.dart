part of 'create_event_bloc.dart';

enum CreateEventStatus {
  initial,
  creating,
  created,
  error,
}

@immutable
class CreateEventState extends Equatable {
  /// Creates a [CreateEventState] instance with
  /// [CreateEventStatus.initial] state.
  const CreateEventState(this.state);

  /// CreateEventState status of the [CreateEventBloc].
  final CreateEventStatus state;

  /// Copy with method that returns a new [CreateEventState]
  CreateEventState copyWith({
    required CreateEventStatus state,
  }) {
    return CreateEventState(
      state,
    );
  }

  @override
  List<Object> get props => [state];

  /// Returns a string representation of the [CreateEventState].
  /// This method is used by [toString] method.
  @override
  String toString() => 'CreateEventState { status: $state }';
}
