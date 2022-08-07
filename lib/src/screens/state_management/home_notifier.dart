import 'package:flutter/material.dart';
import '../../model/matches_info_model.dart';
import 'home_event.dart';
import 'home_event_notifier.dart';
import 'home_state.dart';
import 'home_state_notifier.dart';


class HomeNotifier extends ChangeNotifier {
  HomeNotifier();

  List<MatchesInfoModel> listUsers = [];

  HomeStateNotifier stateNotifier = HomeStateNotifier.instance;
  HomeEventNotifier eventNotifier = HomeEventNotifier.instance;

  void listenEvents() {
    eventNotifier.addListener(
          () {
        if(eventNotifier.event is HomeEventBuscar){
          _getUsers();
        } else if(eventNotifier.event is HomeEventAlterarUsuarios){
          _getNewUsers();
        }
      },
    );
  }

  void _getUsers() async {

    stateNotifier.changeState(HomeStateLoading());

    await Future.delayed(const Duration(seconds: 2));

    // Simulando resposta de uma API em um cenario real

    final response = [
      {
        "championship": "Inicial Champions League Group B",
        "match": "Liverpol x Real Madrid",
        "matchTime": "08:00 - 09:30",
        "scoreBoard": "0 x 0"
      },
    ];

    for (var user in response) {
      listUsers.add(MatchesInfoModel.fromJson(user));
    }

    // adicionar classe para realizar a gerencia de estado do STATE NOTIFIER
    stateNotifier.changeState(HomeStateSuccess());
  }

  void _getNewUsers() async {

    listUsers.clear();

    stateNotifier.changeState(HomeStateLoading());

    await Future.delayed(const Duration(seconds: 2));

    // Simulando resposta de uma API em um cenario real

    final response = [
      {
        "championship": "Atualizado Champions League Group B",
        "match": "Liverpol x Real Madrid",
        "matchTime": "08:00 - 09:30",
        "scoreBoard": "0 x 0"
      },
    ];

    for (var user in response) {
      listUsers.add(MatchesInfoModel.fromJson(user));
    }

    // adicionar classe para realizar a gerencia de estado do STATE NOTIFIER
    stateNotifier.changeState(HomeStateSuccess());
  }
}
