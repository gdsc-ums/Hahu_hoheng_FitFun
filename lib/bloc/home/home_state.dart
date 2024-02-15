part of home;

@immutable
abstract class HomeState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedState extends HomeState {
  final List<Map<String, dynamic>> tabs;
  HomeLoadedState({required this.tabs});
}
