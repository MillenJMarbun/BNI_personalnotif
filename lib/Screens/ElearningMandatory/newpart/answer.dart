import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(bottom: 10),
      // ignore: deprecated_member_use
      child: RaisedButton(
        color: Colors.deepOrange,
        textColor: Colors.white,
        child: Padding(padding: EdgeInsets.all(10),child: Text(answerText, textAlign: TextAlign.center,)),
        onPressed: selectHandler,
      ), //RaisedButton
    ); //Container
  }
}
