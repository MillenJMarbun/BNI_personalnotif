import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/QuizPage.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Text
          Text(
            'Score $resultScore Out Of 100',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          /*FlatButton(
            child: Text(
              'Restart Quiz!',
            ), //Text
            textColor: Colors.blue,
            onPressed: (){
             Navigator.push(context, MaterialPageRoute(builder: (context) => QuizPage()));
            },
          ),*/ //FlatButton
        ], //<Widget>[]
      ), //Column
    ); //Center
  }
}
