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
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 20),
      color: const Color(0XFFF9F9F9),
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, top: 12, right: 11, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ETextH6(
                  textH6: '${widget.match.championship}',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF000000),
                ),
                ETextH6(
                  textH6: '${widget.match.matchTime}',
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: const Color(0XFF128833),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 21),
              child: ETextH6(
                textH6: '${widget.match.match}',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0XFF000000),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 2, top: 4),
              child: ETextH6(
                textH6: '${widget.match.scoreBoard}',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0XFF000000),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
