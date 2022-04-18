import 'package:bloc/bloc.dart';
import 'package:eventy_db/mutations/mutations.dart';
import 'package:eventy_organizer/models/user_model.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';
import 'package:uuid/uuid.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final GraphQLClient client;

  SignupBloc({required this.client}) : super(SignupInitial()) {
    on<SignupEventStarted>(
      (event, emit) async {
        final _id = const Uuid().v4();

        final MutationOptions options = MutationOptions(
            document: gql(Mutations.registerAdminUser),
            variables: {
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
            GetIt.I.registerSingleton(User.fromJson(result.data!["action"]),
                instanceName: "user");

            if (Uuid.isValidUUID(fromString: result.data!["action"]["id"]) &&
                result.data!["action"]["username"] == event.username &&
                result.data!["action"]["email"] == event.email) {
              emit(SignupSuccess());
            } else {
              emit(SignupInitial());
            }
          }
        } catch (e) {
          emit(SignupFailed(message: e.toString()));
        }
      },
    );

    on<SignupEventFinished>(
      (event, emit) => emit(SignupComplete()),
    );
  }
}
