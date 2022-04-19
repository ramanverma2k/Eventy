part of 'homepage_bloc.dart';

@immutable
abstract class HomepageEvent {}

class HomepageDataFetchEvent extends HomepageEvent {}

class HomepageRefreshEvent extends HomepageEvent {}
