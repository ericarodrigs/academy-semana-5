import 'package:flutter/material.dart';

import 'home_state.dart';

class HomeStateNotifier extends ChangeNotifier {
  HomeStateNotifier._();

  static final HomeStateNotifier _instance =  HomeStateNotifier._();

  static HomeStateNotifier get instance => _instance;

  HomeState? state;


  void changeState(HomeState newState){
    state = newState;
    notifyListeners();
  }
}


