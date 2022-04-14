import 'package:bloc/bloc.dart';
import 'package:eventy_db/mutations/mutations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final GraphQLClient client;

  SignupBloc({required this.client}) : super(SignupInitial()) {
    on<SignupEventStarted>((event, emit) async {
      final _id = const Uuid().v4();

      final MutationOptions options =
          MutationOptions(document: gql(Mutations.registerUser), variables: {
        "id": _id,
        "username": event.username,
        "password": event.password,
        "first_name": event.first_name,
        "last_name": event.last_name,
        "email": event.email,
        "contact_no": event.contact_no,
        "description": event.description,
        "is_admin": true,
      });

      emit(SignupInProgress());
      try {
        final result = await client.mutate(options);

        if (result.data!["action"]["id"].isNotEmpty) {
          emit(SignupSuccess());
        } else {
          emit(SignupRetry());
        }
      } catch (e) {
        emit(SignupFailed());
      }
    });
  }
}
