import 'package:bloc/bloc.dart';
import 'package:eventy_db/queries/queries.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GraphQLClient client;

  LoginBloc({required this.client}) : super(LoginInitial()) {
    on<LoginEventStarted>((event, emit) async {
      final QueryOptions options =
          QueryOptions(document: gql(Queries.getUser), variables: {
        "email": event.username,
        "password": event.password,
      });

      emit(LoginInProgress());
      try {
        final result = await client.query(options);

        if (result.data!["users"].isNotEmpty) {
          emit(LoginSuccess());
        } else {
          emit(LoginRetry());
        }
      } catch (e) {
        emit(LoginFailed());
      }
    });
  }
}
