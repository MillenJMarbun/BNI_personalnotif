import 'package:flutter/material.dart';

class FormalLearning extends StatefulWidget {
  @override
  _FormalLearningState createState() => _FormalLearningState();
}

class _FormalLearningState extends State<FormalLearning> {
  int blocks;
  String _reallybruh;
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
                value: _reallybruh,
                //elevation: 5,
                style: TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: <String>[
                  'Inhouse Training',
                  'Public Training',
                  'Kursus Bahasa Asing',
                  'Kursus Komputer',
                  'Sertifikasi',
                  'Digital Learning',
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
                  if (value == 'Inhouse Training'){
                    setState(() {
                      blocks = 1;
                    });
                  }

                  if (value == 'Public Training'){
                    setState(() {
                      blocks = 2;
                    });
                  }
                  if (value == 'Kursus Bahasa Asing'){
                    setState(() {
                      blocks = 3;
                    });
                  }
                  if (value == 'Kursus Komputer'){
                    setState(() {
                      blocks = 4;
                    });
                  }
                  if (value == 'Sertifikasi'){
                    setState(() {
                      blocks = 5;
                    });
                  }
                  if (value == 'Digital Learning'){
                    setState(() {
                      blocks = 6;
                    });
                  }

                  setState(() {
                    _reallybruh = value;
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
            child: _fortnutBuildings(blocks),
          ),
        ],
      ),
    );
  }
}

Widget _fortnutBuildings (int values) {
  if (values == 1) {
    return Container(width: 400,height: 90,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan program pembelajaran yang diinisiasi oleh pegawai BNI sendiri dengan tenaga pengajar dari pihak luar BNI.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 2) {
    return Container(width: 400,height: 165,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan program pembelajaran (training, workshop, konferensi) yang diselenggarakan oleh training provider dimana pesertanya dari berbagai macam instansi dan umum. Yang menetapkan waktu dan lokasi public training adalah pihak training provider sendiri dan tidak bergantung pada keikutsertaan pegawai BNI.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 3) {
    return Container(width: 400,height: 120,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan kegiatan pembelajaran untuk meningkatkan kemampuan berbahasa asing yang biasanya dilaksanakan dalam jangka waktu lebih dari 1 bulan.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 4) {
    return Container(width: 400,height: 120,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('BLW dapat digunakan untuk mengikuti kursus komputer dan pemrograman, namun tidak termasuk dengan pembelian program komputer (software) dan komputernya (hardware).',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 5) {
    return Container(width: 400,height: 120,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan tes untuk membuktikan bahwa bahwa seseorang telah menguasai sebuah kompetensi sampai level tertentu atau dapat melakukan pekerjaan atau tugas spesifik.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

  if (values == 6) {
    return Container(width: 400,height: 80,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Merupakan program pembelajaran yang dilakukan secara online.',
        style: TextStyle(
            color: Colors.white
        ),),
    );
  }

}