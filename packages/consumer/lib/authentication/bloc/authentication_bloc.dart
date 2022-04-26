import 'package:bloc/bloc.dart';
import 'package:consumer/repository/shared_preferences_store.dart';
import 'package:database/database.dart';
import 'package:meta/meta.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.queryRepository,
    required this.mutatationRepository,
    required this.sharedPreferencesStore,
  }) : super(const AuthenticationInitial()) {
    on<AuthenticationStatusValidate>((event, emit) async {
      final _user = sharedPreferencesStore.getValue('user');

      if (_user != null) {
        emit(const AuthenticationStateAuthenticated());
      } else {
        emit(const AuthenticationStateUnauthenticated());
      }
    });
  }

  final Mutate mutatationRepository;
  final Query queryRepository;
  final SharedPreferencesStore sharedPreferencesStore;
}
