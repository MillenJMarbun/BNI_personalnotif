import 'package:bnipersonalnotif/Screens/LitIntBank/quizview.dart';
import 'package:flutter/material.dart';


class LibQuiz2 extends StatefulWidget {
  LibQuiz2({Key key, this.tit, this.q1, this.q2, this.q3, this.q4})
      : super(key: key);
  final String tit, q1, q2, q3, q4;

  @override
  _LibQuiz2State createState() => _LibQuiz2State();
}

class _LibQuiz2State extends State<LibQuiz2> {

  Color mainColor = Color(0xff2e344c);
  Color tealcol = Color(0xff146986);
  var score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      appBar: AppBar(
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 0,
        title: Text(widget.tit),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 700,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(width: 20,),
                      QuizView(
                        showCorrect: true,
                        tagBackgroundColor: mainColor,
                        tagColor: Colors.white,
                        questionTag: "Question 1",
                        answerColor: Colors.white,
                        answerBackgroundColor: tealcol,
                        questionColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        width: 350,
                        height: 550,
                        question: "Apa artinya bank liaison?",
                        rightAnswer: "penghubung unit lain dalam bank dengan Bank koresponden",
                        wrongAnswers: [
                          "Aplikasi",
                          "Bank Spesial",
                          "Beneficiary Customer"
                        ],
                        onRightAnswer: () {
                          setState(() {
                            score += 20;
                          });
                        },
                        onWrongAnswer: () => print("Wrong"),
                      ),
                      SizedBox(width: 30,),
                      QuizView(
                        showCorrect: true,
                        tagBackgroundColor: mainColor,
                        tagColor: Colors.white,
                        questionTag: "Question 2",
                        answerColor: Colors.white,
                        answerBackgroundColor: tealcol,
                        questionColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        width: 350,
                        height: 550,
                        question: "Sebutkan 3 Layer Relationship?",
                        rightAnswer: "GRM,PAM,SAM",
                        wrongAnswers: ["Pekerja", "Goverment", "Universitas"],
                        onRightAnswer: () {
                          setState(() {
                            score += 20;
                          });
                        },
                        onWrongAnswer: () => print("Wrong"),
                      ),
                      SizedBox(width: 30,),
                      QuizView(
                        showCorrect: true,
                        tagBackgroundColor: mainColor,
                        tagColor: Colors.white,
                        questionTag: "Question 3",
                        answerColor: Colors.white,
                        answerBackgroundColor: tealcol,
                        questionColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        width: 350,
                        height: 550,
                        question: "In September 2020 berapa banyak hubungan koresponden BNI?",
                        rightAnswer: "1443",
                        wrongAnswers: ["2500", "3224", "7572"],
                        onRightAnswer: () {
                          setState(() {
                            score += 20;
                          });
                        },
                        onWrongAnswer: () => print("Wrong"),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      QuizView(
                        showCorrect: true,
                        tagBackgroundColor: mainColor,
                        tagColor: Colors.white,
                        questionTag: "Question 4",
                        answerColor: Colors.white,
                        answerBackgroundColor: tealcol,
                        questionColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        width: 350,
                        height: 550,
                        question: "Sebutkan Salah satu fungsi KCLN?",
                        rightAnswer: "International Fund Raising",
                        wrongAnswers: [
                          "Menambahkan Karyawan",
                          "Memperluas Koneksi",
                          "Investasi"
                        ],
                        onRightAnswer: () {
                          setState(() {
                            score += 20;
                          });
                        },
                        onWrongAnswer: () => print("Wrong"),
                      ),
                      SizedBox(width: 70,),
                      QuizView(
                        showCorrect: true,
                        tagBackgroundColor: mainColor,
                        tagColor: Colors.white,
                        questionTag: "Question 5",
                        answerColor: Colors.white,
                        answerBackgroundColor: tealcol,
                        questionColor: Colors.white,
                        backgroundColor: Colors.deepOrange,
                        width: 350,
                        height: 500,
                        question: "Berapa banyak segmen Bisnis trade finance KCLN terdiri atas?",
                        rightAnswer: "3",
                        wrongAnswers: ["1", "2", "4"],
                        onRightAnswer: () {
                          setState(() {
                            score += 20;
                          });
                        },
                        onWrongAnswer: () => print("Wrong"),
                      ),
                      SizedBox(width: 80,),
                      SizedBox(
                        width: 200,
                        height: 10,
                        child: ElevatedButton(
                            onPressed: () {
                                showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: 300,
                                      color: mainColor,
                                      child: Center(
                                        child: Column(
                                          children: <Widget>[
                                            SizedBox(height: 30,),
                                            Text('Your Score',
                                                style: TextStyle(color: Colors.white, fontSize: 30)
                                            ),
                                            SizedBox(height: 50,),
                                            Text("$score",
                                                style: TextStyle(color: Colors.white, fontSize: 50)
                                            ),
                                            Spacer(),
                                            SizedBox(
                                              width: MediaQuery.of(context).size.width,
                                              height: 65,
                                              child: ElevatedButton(
                                                  child: const Text('Finish'),
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  }
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                            },
                           style: ElevatedButton.styleFrom(
                             primary: mainColor
                            ),
                            child: Text("Finish", style: TextStyle(fontSize: 50),)),
                      ),
                    ],
                  ),
                ),

              ],
            )),
      ),
    );
  }
}
