import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Absen/absenquestion2.dart';

class AbsenQuestions extends StatefulWidget {
  @override
  _AbsenQuestionsState createState() => _AbsenQuestionsState();
}

class _AbsenQuestionsState extends State<AbsenQuestions> {
  TextEditingController _textController = TextEditingController();
  String _textError;

  double _currentSliderValue = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: new Text(
            'Absen',
            style: TextStyle(color: Colors.teal),
          ),
        ),
        body: SingleChildScrollView(
        /*  children: [*/
          child:  Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Center(
                    child: Column(
                  children: [
                    Text(
                      'Formulir Survey Pembelajaran',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.orange,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '(NPS Program Pembelajaran)',
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                )),
                Padding(
                  padding: EdgeInsets.only(top: 30, left: 20),
                  child: Text('Petunjuk Pengisian:',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 20),
                  child: Text(
                    '1. Click pada angka yang berada di bawah pertanyaan.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                  child: Text(
                    '2. Semakin tinggi angka yang Saudara pilih menandakan semakin tinggi pula saudara merekomendasikanya. Angka 0 Berarti Saudara Sangat tidak Merekomendasikan dan angka 10 Menandakan sangat merekomendasikan.',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                  child: Text(
                    '3. Saudara Wajib mengisi survey ini sebelum absen dalam program webinar',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Text(
                    'Pertanyaan:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                  child: Text(
                    'Seberapa besar anda merekomendasikan program suplemen pengetahuan BNI CorpU : Lompat lebih tinggi bersama XPORA dengan narasumbernya?',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Text(
                    'Jawaban:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8, left: 20, right: 20),
                  child: Text(
                    'Penilaian dari 0-10 \n\n 0= Sangat tidak merekomendasikan \n10= Sangat merekomendasikan',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                SizedBox(height: 10),
                Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 10,
                  divisions: 10,
                  label: _currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),
                Center(
                  child: Text(
                    "$_currentSliderValue",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.orange,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Text(
                    'Alasan:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  width: 360,
                  height: 90,
                  child: Theme(
                    data: new ThemeData(
                      primaryColor: Colors.orange,
                    ),
                    child: TextField(
                      controller: _textController,
                      decoration: InputDecoration(
                        errorText: _textError,
                        border: OutlineInputBorder(),
                        labelText: 'Alasan',
                      ),
                    ),
                  ),
                ),
                Center(
                    child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                    child: Text('Next'),
                    onPressed: () {
                      setState(() {
                        if (_textController.text.length < 2)
                          _textError = "Tolong Isi Alasan";
                        else
                          /*_textError = null;*/
                        Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AbsenQuestion2(),
                        ),
                      );
                      });
                    },
                  ),
                )),
              ],
            ),
         /* ],*/
        ));
  }
}
