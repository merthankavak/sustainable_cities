import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  //Remark Logic

  String get resultPhrase {
    String resultText;

    if (resultScore >= 0 && resultScore <= 6) {
      resultText = 'There is no critical earthquake risk in your construction!';

      print(resultScore);
    } else if (resultScore >= 7 && resultScore <= 12) {
      resultText = 'Your construction has low level earthquake risk. ';

      print(resultScore);
    } else if (resultScore >= 13 && resultScore <= 20) {
      resultText =
          'Your construction has medium level earthquake risk. It needs to be inspect. ';
    } else if (resultScore >= 21 && resultScore <= 60) {
      resultText = 'Your construction is not durable to the earthquakes.';
    } else {
      print(resultScore);
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            'Your EarthQuake Risk Score ' '$resultScore',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              'Restart Quiz!',
            ),
            textColor: Colors.blue,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
