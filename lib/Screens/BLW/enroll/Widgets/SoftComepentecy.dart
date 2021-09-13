import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/Widgets/ExperentialLearning.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/Widgets/learningfromothers.dart';

import 'FormalLearning.dart';

class SoftCompetency extends StatefulWidget {
  @override
  _SoftCompetencyState createState() => _SoftCompetencyState();
}

class _SoftCompetencyState extends State<SoftCompetency> {
  String _chosennVal1, _chosennVal2;
  int widgetval;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Soft Competency BNI',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: DropdownButton<String>(
                  focusColor: Colors.white,
                  value: _chosennVal1,
                  //elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: <String>[
                    'Analytical Thinking',
                    'Attention To Detail',
                    'Business Acumen',
                    'Collaboration and Networking',
                    'Continous Improvement',
                    'Customer Orientation',
                    'Developing others',
                    'Information Seeking',
                  ].map<DropdownMenuItem<String>>((String valueno1) {
                    return DropdownMenuItem<String>(
                      value: valueno1,
                      child: Text(
                        valueno1,
                        style: TextStyle(color: Colors.black),
                      ),
                    );
                  }).toList(),
                  hint: Text(
                    "Pilih Soft Competency",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  onChanged: (String value) {
                    setState(() {
                      _chosennVal1 = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Metode Pelajaran',
                    style: TextStyle(fontSize: 16),
                  ),
                  DropdownButton<String>(
                    focusColor: Colors.white,
                    value: _chosennVal2,
                    //elevation: 5,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor: Colors.black,
                    items: <String>[
                      'Experential Learning',
                      'Learning From Others',
                      'Formal Learning',
                      'Internet Pembelajaran',
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
                      "Metode Pelajaran",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    onChanged: (String value) {
                      if (value == 'Experential Learning'){
                        setState(() {
                          widgetval = 1;
                        });
                      };
                      if (value == 'Learning From Others'){
                        setState(() {
                          widgetval = 2;
                        });
                      };

                      if (value == 'Formal Learning'){
                        setState(() {
                          widgetval = 3;
                        });
                      };

                      if (value == 'Internet Pembelajaran'){
                        setState(() {
                          widgetval = 4;
                        });
                      };

                      setState(() {
                        _chosennVal2 = value;
                      });
                    },
                  ),
                ],
              ),
              Container(
                child: _widgetBuilding(widgetval),
              ),
            ])
    );
  }
}

Widget _widgetBuilding (int values) {
  if (values == 1) {
    return Experential();
  }
  if (values == 2) {
    return LearningOthers();
  }
  if (values == 3) {
    return FormalLearning();
  }
  if (values == 4) {
    return Container(
      child: Column(
        children: [
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
          SizedBox(height: 30,),
          Container(width: 400,height: 80,color: Colors.green,
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Text('Merupakan program pembelajaran yang dilakukan secara online.',
              style: TextStyle(
                  color: Colors.white
              ),),
          ),
        ],
      ),
    );
  }
}
