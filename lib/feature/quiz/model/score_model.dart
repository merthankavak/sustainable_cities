/*
class ScoreModel {
  final RangeValues score;
  final String desc;

  ScoreModel(this.score, this.desc);
}

class ScoreModels {
  static final List<ScoreModel> scoreModels = [
    ScoreModel(
        const RangeValues(0, 6), 'There is no critical earthquake risk in your construction!'),
    ScoreModel(const RangeValues(7, 12), 'Your construction has low level earthquake risk.'),
    ScoreModel(const RangeValues(13, 20),
        'Your construction has medium level earthquake risk. It needs to be inspect.'),
    ScoreModel(const RangeValues(21, 60), 'Your construction is not durable to the earthquakes.'),
  ];
}
*/
class ScoreModel {
  int score;
  ScoreModel(this.score);

  String get scoreWithDesc {
    if (score > 0 && score <= 6) {
      return 'There is no critical earthquake risk in your construction!';
    } else if (score > 7 && score <= 12) {
      return 'Your construction has low level earthquake risk.';
    } else if (score > 13 && score <= 20) {
      return 'Your construction has low level earthquake risk.';
    } else if (score > 21 && score <= 60) {
      return 'Your construction has medium level earthquake risk. It needs to be inspect.';
    } else {
      return '';
    }
  }
}
