import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  Function selectHandler;
  String printAnswer;

  Answer(Function refe, String spec) {
    this.selectHandler = refe;
    this.printAnswer = spec;
  }
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: RaisedButton(
        child: Text(this.printAnswer),
        onPressed: selectHandler,
      ),
    );
  }
}
