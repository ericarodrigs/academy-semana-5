import 'package:flutter/material.dart';
import 'home_event.dart';

class HomeEventNotifier extends ChangeNotifier {
  HomeEventNotifier._();

  static final HomeEventNotifier _instance = HomeEventNotifier._();

  static HomeEventNotifier get instance => _instance;

  HomeEvent? event;

  void changeEvent(HomeEvent newEvent) {
    event = newEvent;
    notifyListeners();
  }
}
