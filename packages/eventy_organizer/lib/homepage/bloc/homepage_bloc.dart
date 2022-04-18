import 'package:bloc/bloc.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:meta/meta.dart';

part 'homepage_event.dart';
part 'homepage_state.dart';

class HomepageBloc extends Bloc<HomepageEvent, HomepageState> {
  final GraphQLClient client;

  HomepageBloc({required this.client}) : super(HomepageInitial()) {
    on<HomepageEvent>((event, emit) {});
  }
}
