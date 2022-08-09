class MatchesInfoModel {
  String? championship;
  String? match;
  String? matchTime;
  String? scoreBoard;

  MatchesInfoModel(
      {this.championship, this.match, this.matchTime, this.scoreBoard});

  MatchesInfoModel.fromJson(Map<String, dynamic> json) {
    championship = json['championship'];
    match = json['match'];
    matchTime = json['matchTime'];
    scoreBoard = json['scoreBoard'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['championship'] = championship;
    data['match'] = match;
    data['matchTime'] = matchTime;
    data['scoreBoard'] = scoreBoard;
    return data;
  }
}
