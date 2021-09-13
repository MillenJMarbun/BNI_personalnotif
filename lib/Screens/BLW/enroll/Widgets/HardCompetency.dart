import 'package:flutter/material.dart';

class HardCompetency extends StatefulWidget {
  @override
  _HardCompetencyState createState() => _HardCompetencyState();
}

class _HardCompetencyState extends State<HardCompetency> {
  String _chosenn, _chosenn2, _chosenn3, _chosenn4;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
            Center(
              child: Text(
                'Hard Competency BNI',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Center(
              child: DropdownButton<String>(
                focusColor: Colors.white,
                value: _chosenn,
                //elevation: 5,
                style: TextStyle(color: Colors.white),
                iconEnabledColor: Colors.black,
                items: <String>[
                  'Silahkan Memilih Di Luar Kompetensi',
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
                  "Pilih Hard Competency",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                onChanged: (String value) {
                  setState(() {
                    _chosenn = value;
                  });
                },
              ),
            ),

]),
    );
  }
}


