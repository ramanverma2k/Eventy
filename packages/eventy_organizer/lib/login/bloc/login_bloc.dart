import 'package:bloc/bloc.dart';
import 'package:eventy_db/queries/queries.dart';
import 'package:eventy_organizer/models/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GraphQLClient client;

  LoginBloc({required this.client}) : super(LoginInitial()) {
    on<LoginEventStarted>(
      (event, emit) async {
        final QueryOptions options =
            QueryOptions(document: gql(Queries.getUser), variables: {
          "email": event.username,
          "password": event.password,
        });

        emit(LoginInProgress());
        try {
          final result = await client.query(options);

          if (result.data!["exception"] == null &&
              result.data!["users"].isNotEmpty) {
            GetIt.I.registerSingleton(User.fromJson(result.data!["users"][0]),
                instanceName: "user");
            emit(LoginSuccess());
          } else {
            emit(LoginInitial());
          }
        } catch (e) {
          emit(LoginFailed());
        }
      },
    );
  }
}
