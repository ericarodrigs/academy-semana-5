import 'package:exercicio_semana_5/src/design_system/atoms/e_text_h6.dart';
import 'package:flutter/material.dart';
import '../model/matches_info_model.dart';

class MatchesInfoWidget extends StatefulWidget {
  final MatchesInfoModel match;

  const MatchesInfoWidget({Key? key, required this.match}) : super(key: key);

  @override
  State<MatchesInfoWidget> createState() => _MatchesInfoWidgetState();
}

class _MatchesInfoWidgetState extends State<MatchesInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0XFFF5F5F5),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ETextH6(
                  textH6: '${widget.match.championship}',
                  fontWeight: FontWeight.w600,
                ),
                ETextH6(
                  textH6: '${widget.match.matchTime}',
                  fontWeight: FontWeight.w600,
                ),
              ],
            ),
            const SizedBox(height: 21,),
            ETextH6(
              textH6: '${widget.match.match}',
              fontWeight: FontWeight.w700,
            ),
            const SizedBox(height: 5,),
            ETextH6(
              textH6: '${widget.match.scoreBoard}',
              fontWeight: FontWeight.w700,
            ),
          ],
        ),
      ),
    );
  }
}
