import 'package:flutter/material.dart';

class Experential extends StatefulWidget {
  @override
  _ExperentialState createState() => _ExperentialState();
}

class _ExperentialState extends State<Experential> {
  String _bruh, _bruh2;
  int boool;
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
                value: _bruh,
                //elevation: 5,
                style: TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: <String>[
                  'Magang',
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
                  if (value == 'Magang'){
                    setState(() {
                      boool = 1;
                    });
                  }
                  setState(() {
                    _bruh = value;
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
            child: _widgetBuildings(boool),
          ),
        ],
      ),
    );
  }
}


Widget _widgetBuildings (int values) {
  if (values == 1) {
    return Container(width: 400,height: 120,color: Colors.green,
      padding: EdgeInsets.only(top: 20, left: 15, right: 15),
      child: Text('Pelaksanaan magang diperbolehkan ke perusahaan di dalam negeri atau luar negeri. Perusahaan tujuan magang harus bonafit, memiliki keterkaitan bisnis atau kesamaan bisnis dengan BNI',
      style: TextStyle(
        color: Colors.white
      ),),
    );
  }

}