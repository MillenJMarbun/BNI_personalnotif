import 'package:bnipersonalnotif/Screens/LitIntBank/libhome.dart';
import 'package:bnipersonalnotif/Screens/LitIntBank/quizview.dart';
import 'package:flutter/material.dart';

class libQuiz extends StatefulWidget {
  libQuiz({Key key, this.tit, this.q1, this.q2, this.q3, this.q4})
      : super(key: key);
  final String tit, q1, q2, q3, q4;

  @override
  _libQuizState createState() => _libQuizState();
}

class _libQuizState extends State<libQuiz> {
  Color mainColor = Color(0xff2e344c);
  Color tealcol = Color(0xff146986);
  var score = 0;
  var calc = false;

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
              question: "Pihak Yang Terlibat Fund Remittance?",
              rightAnswer: "Semua Benar",
              wrongAnswers: [
                "Ordering Customer / Institution",
                "Remitting Bank",
                "Beneficiary Customer"
              ],
              onRightAnswer: () {
                setState(() {
                  score += 20;
                });
              },
              onWrongAnswer: () => print("Wrong"),
            ),
            SizedBox(
              height: 40,
            ),
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
              question: "Fund Remittance tertulis atas?",
              rightAnswer: "Ordering Customer atau institution",
              wrongAnswers: ["Pekerja", "Goverment", "Universitas"],
              onRightAnswer: () {
                setState(() {
                  score += 20;
                });
              },
              onWrongAnswer: () => print("Wrong"),
            ),
            SizedBox(
              height: 40,
            ),
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
              question: "Tipe Instruksi Pembebanan biaya transaksi remittance?",
              rightAnswer: "OUR,SHA,BEN",
              wrongAnswers: ["OUR,AHS,EBB", "INA,BEE,ROI", "SOS, ROR, SHA"],
              onRightAnswer: () {
                setState(() {
                  score += 20;
                });
              },
              onWrongAnswer: () => print("Wrong"),
            ),
            SizedBox(
              height: 40,
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
              question: "Namakan Satu Jenis OTR Berdasarkan Currency?",
              rightAnswer: "OTR Multicurrency",
              wrongAnswers: [
                "OTR Soft Currency",
                "OTR Complex Currency",
                "OTR India Rupee"
              ],
              onRightAnswer: () {
                setState(() {
                  score += 20;
                });
              },
              onWrongAnswer: () => print("Wrong"),
            ),
            SizedBox(
              height: 40,
            ),
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
              question: "Namakan Satu Jenis OTR Berdasarkan Channel?",
              rightAnswer: "Semua Benar",
              wrongAnswers: ["OTR KANTOR CABANG", "OTR API", "MOBILE BANKING"],
              onRightAnswer: () {
                setState(() {
                  score += 20;
                });
              },
              onWrongAnswer: () => print("Wrong"),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
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
                    });
                  },
                  child: Text("Finish")),
            ),
            SizedBox(
              height: 20,
            ),
           /* Padding(
              padding: EdgeInsets.all(20),
              child: _bbuildChild(calc),
            )*/
          ],
        )),
      ),
    );
  }
}

/*
Widget _bbuildChild(calc) {
  if (calc) {
    return Container(
      height: 200,
      width: 200,
      color: Colors.pink,
    );
  }
  if (calc) {
    return Container();
  }
}
*/
