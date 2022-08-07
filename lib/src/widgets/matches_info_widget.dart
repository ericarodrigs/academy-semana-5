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
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Card(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('${widget.match.championship}'),
                Text('${widget.match.matchTime}'),
              ],
            ),
            Text('${widget.match.match}'),
            Text('${widget.match.scoreBoard}'),
          ],
        ),
      ),
    );
  }
}

// Row
// (
// children: [
// Expanded
// (
// child: ClipOval
// (
// child: Image.network(widget.user.urlImage ?? "
// "
// ,
// fit: BoxFit.cover,)
// ,
// )
// ,
// )
// ,
// const SizedBox(width: 10
// )
// ,
// Expanded
// (
// flex: 3
// ,
// child: SizedBox
// (
// child: Column
// (
// crossAxisAlignment: CrossAxisAlignment.start,children: [
// Text
// ('Name :
// ${
// widget.user.name ?? "
// "
// }
// '
// ,
// style: const TextStyle(fontSize: 16
// ,
// fontWeight: FontWeight.w600),
// )
// ,
// Text
// ('Username :
// ${
// widget.user.userNameGithub ?? "
// "
// }
// '
// ,
// style: const TextStyle(fontSize: 16
// ,
// fontWeight: FontWeight.w600),
// )
// ,
// Text
// ('Skills :
// ${
// widget.user.skills ?? "
// "
// }
// '
// ,
// style: const TextStyle(fontSize: 16
// ,
// fontWeight: FontWeight.w600),),
// ],
// ),
// ),
// ),
// ]
// ,
// )