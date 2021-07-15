import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultTotal;
  final Function resetQuiz;

  Result(this.resultTotal, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (resultTotal <= 8) {
      resultText = "You don't know me";
    } else if (resultTotal <= 29) {
      resultText = "Not so much";
    } else {
      resultText = "Marry me ";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            TextButton(
              onPressed: resetQuiz,
              child: Text('Restart Quiz!'),
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
