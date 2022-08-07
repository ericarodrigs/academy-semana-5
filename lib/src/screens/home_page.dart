import 'package:exercicio_semana_5/src/screens/state_management/home_event.dart';
import 'package:exercicio_semana_5/src/screens/state_management/home_notifier.dart';
import 'package:exercicio_semana_5/src/screens/state_management/home_state.dart';
import 'package:flutter/material.dart';
import '../widgets/matches_info_widget.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

final HomeNotifier _homeNotifier = HomeNotifier();

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    _homeNotifier.listenEvents();
    _homeNotifier.eventNotifier.changeEvent(HomeEventSearch());
    super.initState();
  }

  @override
  void dispose() {
    _homeNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jogos'),
      ),
      body: AnimatedBuilder(
        animation: _homeNotifier.stateNotifier,
        builder: (BuildContext context, Widget? child) {
          if (_homeNotifier.stateNotifier.state is HomeStateSuccess) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: _homeNotifier.listMatches.length,
                      itemBuilder: (BuildContext context, int index) {
                        return MatchesInfoWidget(
                            match: _homeNotifier.listMatches[index]);
                      },
                    )
                  ],
                ),
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
