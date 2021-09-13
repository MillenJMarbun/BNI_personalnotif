import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/Widgets/HardCompetency.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/Widgets/SoftComepentecy.dart';

class Sesuai extends StatefulWidget {
  @override
  _SesuaiState createState() => _SesuaiState();
}

class _SesuaiState extends State<Sesuai> {
  String _chosenValue3;
  int valuess1;
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
              value: _chosenValue3,
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
                    valuess1 = 1;
                  });
                };
                if (value == 'Soft Competency'){
                  setState(() {
                    valuess1 = 2;
                  });
                };
                setState(() {
                  _chosenValue3 = value;
                }
                );
              },
            ),
          ),
          Container(
            child: _buildChildd1(valuess1),
          )
        ],
      ),
    );
  }
}

Widget _buildChildd1 (int values) {
  if (values == 1) {
    return HardCompetency();
  }
  if (values == 2) {
    return SoftCompetency();
  }
}