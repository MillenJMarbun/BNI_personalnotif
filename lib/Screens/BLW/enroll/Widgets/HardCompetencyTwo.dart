import 'package:flutter/material.dart';

import 'ExperentialLearning.dart';
import 'FormalLearning.dart';
import 'learningfromothers.dart';


class HardComptwo extends StatefulWidget {
  @override
  _HardComptwoState createState() => _HardComptwoState();
}

class _HardComptwoState extends State<HardComptwo> {
  String _yourchosen, _yourchosen2;
  int valwidget;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
            children: [
              SizedBox(height: 10),
              Center(
                child: Text(
                  'Hard Competency BNI',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Center(
                child: DropdownButton<String>(
                  focusColor: Colors.white,
                  value: _yourchosen,
                  //elevation: 5,
                  style: TextStyle(color: Colors.white),
                  iconEnabledColor: Colors.black,
                  items: <String>[
                    'App Programming',
                    'Asset Utilization',
                    'Auditing',
                    'Banking Management',
                    'Banking Products and Services',
                    'Building Grounds Maintanence',
                    'Business Development',
                    'Capital Markets knowledge',
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
                      _yourchosen = value;
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
                    value: _yourchosen2,
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
                          valwidget = 1;
                        });
                      };
                      if (value == 'Learning From Others'){
                        setState(() {
                          valwidget = 2;
                        });
                      };

                      if (value == 'Formal Learning'){
                        setState(() {
                          valwidget = 3;
                        });
                      };

                      if (value == 'Internet Pembelajaran'){
                        setState(() {
                          valwidget = 4;
                        });
                      };

                      setState(() {
                        _yourchosen2 = value;
                      });
                    },
                  ),
                ],
              ),
              Container(
                child: _widgetBuiler(valwidget),
              ),
            ])
    );
  }
}

Widget _widgetBuiler (int values) {
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
