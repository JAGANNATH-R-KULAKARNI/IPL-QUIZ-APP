import 'package:flutter/material.dart';
/*
class Result extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        "You Finished The Quiz :)",
        style: TextStyle(fontSize: 40),
        textAlign: TextAlign.center,
      ),
    );
  }
}
*/

class Result extends StatelessWidget {
  Function Reset;
  int total_score;

  Result(Function Reset, int total_score) {
    this.Reset = Reset;
    this.total_score = total_score;
  }

  String get resultComment {
    String comment_r;

    if (total_score == 0) {
      comment_r = "very Bad  :(";
    } else if (total_score == 1) {
      comment_r = "Bad  :(";
    } else if (total_score == 2) {
      comment_r = "Below Average  :|";
    } else if (total_score == 3) {
      comment_r = "Average  :|";
    } else if (total_score == 4) {
      comment_r = "Good :)";
    } else {
      comment_r = "Great :)";
    }

    return comment_r;
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "YOUR SCORE OUT OF 5 IS ",
          style: TextStyle(fontSize: 30),
          textAlign: TextAlign.center,
        ),
        Text(
          total_score.toString(),
          style: TextStyle(fontSize: 100),
          textAlign: TextAlign.center,
        ),
        Text(
          resultComment,
          style: TextStyle(fontSize: 50),
          textAlign: TextAlign.center,
        ),
        Container(
          width: double.infinity,
          color: total_score > 2
              ? (total_score > 3 ? Colors.green : Colors.yellow)
              : Colors.red,
          child: RaisedButton(
            child: Text('ReTry'),
            onPressed: Reset,
          ),
        )
      ],
    );
  }
}
