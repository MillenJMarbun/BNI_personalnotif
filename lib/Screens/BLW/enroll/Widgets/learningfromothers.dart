import 'package:flutter/material.dart';

class LearningOthers extends StatefulWidget {
  @override
  _LearningOthersState createState() => _LearningOthersState();
}

class _LearningOthersState extends State<LearningOthers> {
  String _lepic;
  int vakl;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Jenis Pelajaran',
                style: TextStyle(fontSize: 14),
              ),
              DropdownButton<String>(
                focusColor: Colors.white,
                value: _lepic,
                //elevation: 5,
                style: TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: <String>[
                  'Coaching',
                  'Mentoring',
                  'Benchmarking',
                  'Buku (eBook / Cetak)',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                }).toList(),
                hint: Text(
                  "Jenis Pelajaran",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (String value) {
                  if (value == 'Coaching'){
                    setState(() {
                      vakl = 1;
                    });
                  }
                  if (value == 'Mentoring'){
                    setState(() {
                      vakl = 2;
                    });
                  }
                  if (value == 'Benchmarking'){
                    setState(() {
                      vakl = 3;
                    });
                  }
                  if (value == 'Buku (eBook / Cetak)'){
                    setState(() {
                      vakl = 4;
                    });
                  }
                  setState(() {
                    _lepic = value;
                  });
                },
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Judul Pelajaran',
                style: TextStyle(fontSize: 14),
              ),
              Container(
                width: 220,
                height: 30,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contoh: Industri Analisis Jasa Konstruksi',
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 40,),
          Container(
            child: _yessirs(vakl),
          ),
        ],
      ),
    );
  }
}

Widget _yessirs (int values) {

  if (values == 1) {
    return Container(width: 400,height: 170,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan proses pengembangan interaktif yang diberikan oleh seseorang yang disebut coach/mentor, kepada individu/tim yang ingin dikembangkan disebut coachee/mentee, dalam bentuk dukungan yang terarah, dengan tujuan agar sikap, perilaku, dan keahlian yang dibutuhkan untuk menyelesaikan pekerjaan terpenuhi dengan baik.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 2) {
    return Container(width: 400,height: 165,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan proses pengembangan interaktif yang diberikan oleh seseorang yang disebut coach/mentor, kepada individu/tim yang ingin dikembangkan disebut coachee/mentee, dalam bentuk dukungan yang terarah, dengan tujuan agar sikap, perilaku, dan keahlian yang dibutuhkan untuk menyelesaikan pekerjaan terpenuhi dengan baik.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 3) {
    return Container(width: 400,height: 160,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan upaya yang dilakukan untuk membandingkan pencapaian kinerja terhadap aktivitas atau kegiatan serupa unit/bagian/organisasi lain yang sejenis baik secara internal maupun eksternal dengan tujuan menggunakan informasi benchmark tersebut untuk meningkatkan performance unitnya.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 4) {
    return Container(width: 400,height: 120,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Berupa materi pengetahuan & informasi dalam berbagai bentuk seperti buku, jurnal, majalah ekonomi, perbankan & hukum, dan sejenisnya baik dalam bentuk cetak maupun elektronik.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

}