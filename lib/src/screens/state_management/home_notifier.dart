import 'package:flutter/material.dart';
import '../../model/matches_info_model.dart';
import 'home_event.dart';
import 'home_event_notifier.dart';
import 'home_state.dart';
import 'home_state_notifier.dart';

class HomeNotifier extends ChangeNotifier {
  HomeNotifier();

  List<MatchesInfoModel> listMatches = [];

  HomeStateNotifier stateNotifier = HomeStateNotifier.instance;
  HomeEventNotifier eventNotifier = HomeEventNotifier.instance;

  void listenEvents() {
    eventNotifier.addListener(
          () {
        if (eventNotifier.event is HomeEventSearch) {
          _getMatches();
        }
      },
    );
  }

  void _getMatches() async {
    stateNotifier.changeState(HomeStateLoading());

    await Future.delayed(const Duration(seconds: 2));

    final response = [
      {
        "championship": "Champions League Group B",
        "match": "Liverpool x Real Madrid",
        "matchTime": "08:00 - 09:30",
        "scoreBoard": "2 x 0"
      },
      {
        "championship": "Champions League Group B",
        "match": "Barcelona x Manchester United",
        "matchTime": "09:30 - 11:00",
        "scoreBoard": "1 x 2"
      },
      {
        "championship": "Champions League Group B",
        "match": "PSG x Chelsea",
        "matchTime": "08:00 - 09:30",
        "scoreBoard": "3 x 1"
      },
      {
        "championship": "Champions League Group B",
        "match": "Manchester City x Juventus",
        "matchTime": "09:30 - 11:00",
        "scoreBoard": "2 x 0"
      },
    ];

    for (var championship in response) {
      listMatches.add(MatchesInfoModel.fromJson(championship));
    }

    stateNotifier.changeState(HomeStateSuccess());
  }
}
