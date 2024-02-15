library home;

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

part './home_event.dart';
part './home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitialState()) {
    on<HomeInitialEvent>(homeInitialEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) {
    emit(HomeLoadingState());
    emit(
      HomeLoadedState(tabs: const [
        {"name": "Beranda", "icon": "assets/icons/home.svg"},
        {"name": "Aktivitas", "icon": "assets/icons/activity.svg"},
        {"name": "Makanan", "icon": "assets/icons/food.svg"},
        {"name": "Profil", "icon": "assets/icons/profile.svg"},
      ]),
    );
  }

  Future<void> logout(LogoutEvent event, Emitter<HomeState> emit) async {
    await FirebaseAuth.instance.signOut();
  }
}
