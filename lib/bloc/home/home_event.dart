part of home;

@immutable
abstract class HomeEvent {}

class HomeInitialEvent extends HomeEvent {}

class LogoutEvent extends HomeEvent {}
