import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/Widgets/HardCompetencyTwo.dart';

import 'HardCompetency.dart';
import 'SoftComepentecy.dart';

class TidakSesuai extends StatefulWidget {
  @override
  _TidakSesuaiState createState() => _TidakSesuaiState();
}

class _TidakSesuaiState extends State<TidakSesuai> {
  String _chosenValue4;
  int valuess2;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Text(
              'Kompetensi Yang Dikembangkan',
              style: TextStyle(fontSize: 14),
            ),
          ),
          SizedBox(height: 10,),
          Center(
            child: DropdownButton<String>(
              focusColor: Colors.white,
              value: _chosenValue4,
              //elevation: 5,
              style: TextStyle(color: Colors.white),
              iconEnabledColor: Colors.black,
              items: <String>[
                'Hard Competency',
                'Soft Competency',
              ].map<DropdownMenuItem<String>>((String value3) {
                return DropdownMenuItem<String>(
                  value: value3,
                  child: Text(
                    value3,
                    style: TextStyle(color: Colors.black),
                  ),
                );
              }).toList(),
              hint: Text(
                "Pilih Kompetensi",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              onChanged: (String value) {
                if (value == 'Hard Competency'){
                  setState(() {
                    valuess2 = 1;
                  });
                };
                if (value == 'Soft Competency'){
                  setState(() {
                    valuess2 = 2;
                  });
                };
                setState(() {
                  _chosenValue4 = value;
                }
                );
              },
            ),
          ),
          Container(
            child: _buildChildd2(valuess2),
          )
        ],
      ),
    );
  }
}

Widget _buildChildd2 (int values) {
  if (values == 1) {
    return HardComptwo();
  }
  if (values == 2) {
    return SoftCompetency();
  }
}