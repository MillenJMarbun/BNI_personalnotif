
import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/quiz.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/result.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  final _questions = const [
    {
      'questionText': 'Q1. Merupakan simpananyang berasal dari masyarakat atau dana pihak ketiga yang penarikannya dapat dilakukan setiap saat dengan menggunakan sarana penarikan berupa berupa cek dan bilyet giro atau sarana lainnya disebut',
      'answers': [
        {'text': 'Setoran Giro Setoran Giro Setoran Giro Setoran Giro Setoran Giro Setoran Giro Setoran Giro Setoran Giro', 'score': 0},
        {'text': 'Rekening Giro', 'score': 0},
        {'text': 'Simpanan Giro', 'score': 20},
        {'text': 'Deposito', 'score': 0},
      ],
    },
    {
      'questionText': 'Q2. Menurut Dandawijaya ( 2000: 56 ), dalam pelasanaannya, giro ditatausahakan oleh bank dalam suatu rekening yang disebut rekening koran. Jenis rekening giro ini dapat berupa ....',
      'answers': [
        {'text': 'Rekening atas nama perorangan', 'score': 0},
        {'text': 'Rekening atas nama badan usaha', 'score': 0},
        {'text': 'Rekening bersama', 'score': 0},
        {
          'text':
          'Jawaban a b dan c benar',
          'score': 20
        },
      ],
    },
    {
      'questionText': ' Q3. Simpanan pada bank yang penarikannya menggunakan buku tabungan atau ATM, disebut',
      'answers': [
        {'text': 'Simpanan deposito ( time deposit )', 'score': 0},
        {'text': 'Simpanan tabungan ( saving deposit )', 'score': 20},
        {'text': 'Simpanan Giro ( demand deposit )', 'score': 0},
        {'text': 'kredit produktif', 'score': 0},
      ],
    },
    {
      'questionText': 'Q4. Merupakan simpanan pada bank dalam jangka waktu tertentu ( jatuh tempo ) dan penarikannya menurut jangka waktu tertentu, disebut ',
      'answers': [
        {'text': 'Simpanan deposito (time deposit )', 'score': 20},
        {'text': 'Simpanan tabungan (saving deposit)', 'score': 0},
        {'text': '. Simpanan Giro ( demand deposit )', 'score': 0},
        {'text': 'Kredit produktif', 'score': 0},
      ],
    },
    {
      'questionText':
      'Q5. Apakah Bisa Meminjam Uang Dari Bank ',
      'answers': [
        {
          'text': 'Tidak',
          'score': 0,
        },
        {'text': 'Bisa', 'score': 20},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    /*print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }*/
  }


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Post Test'),
          backgroundColor: Colors.deepOrange,
        ),
        body: Column(
          children: [
            Padding(
                padding: EdgeInsets.only(left: 20, right: 30, top: 20),
                child: _buildChild(_questionIndex),
            ),
            Padding(
              padding: const EdgeInsets.only(top:  40, left: 20, right: 20),
              child: _questionIndex < _questions.length
                  ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
                  : Result(_totalScore, _resetQuiz),
            ),
          ],
        ), //Padding
      ), //Scaffold
      debugShowCheckedModeBanner: false,
    );

  }
}


Widget _buildChild(_questionIndex) {
  if (_questionIndex < 5){
return Container(
    decoration: BoxDecoration(
        color: Colors.teal,
        border: Border.all(color: Colors.teal),
        borderRadius: BorderRadius.circular(20)),
    width: 300,
    height: 60,
    child: Center(
      child: SlideCountdownClock(
        duration: Duration(minutes: 1),
        slideDirection: SlideDirection.Down,
        separator: ":",
        textStyle: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        onDone: () {
          /*_scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Clock 1 finished')));*/
        },
      ),
    ));
  }
  else{
    return SizedBox(height: 50);
  }
}

