import 'package:flutter/Material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 20) {
      resultText = "you are awesome and innocent";
    } else if (resultScore <= 40) {
      resultText = "pretty likeable";
    } else if (resultScore <= 60) {
      resultText = "you are strange";
    } else {
      resultText = "you are bad";
    }
    return '$resultText + $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text('Restart Quiz'),
            onPressed: () => resetHandler(),
          )
        ],
      ),
    );
  }
}
