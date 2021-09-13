import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/AddEnrollPageThree.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/Widgets/SoftComepentecy.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/Widgets/tidaksesuai.dart';

import 'Widgets/HardCompetency.dart';
import 'Widgets/Sesuai.dart';

class EnrollPageTwo extends StatefulWidget {
  @override
  _EnrollPageTwoState createState() => _EnrollPageTwoState();
}

class _EnrollPageTwoState extends State<EnrollPageTwo> {
  String _chosenValue2,  _chosenValue4, _chosenValue5, _chosenValue6;
  int values;
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
          'Add Enrollment',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Center(
                    child: Text(
                      'Input Enrollment Penggunaan BLW',
                      style: TextStyle(
                          color: Colors.teal,
                          fontSize: 22,
                          fontWeight: FontWeight.bold),
                    )),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 25, right: 25),
                  color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Profil Kompetensi',
                              style: TextStyle(fontSize: 14),
                            ),
                            DropdownButton<String>(
                              focusColor: Colors.white,
                              value: _chosenValue2,
                              //elevation: 5,
                              style: TextStyle(color: Colors.white),
                              iconEnabledColor: Colors.black,
                              items: <String>[
                                'Sesuai Profil Kompetensi',
                                'Di Luar Profil Kompetens',
                              ].map<DropdownMenuItem<String>>((String value2) {
                                return DropdownMenuItem<String>(
                                  value: value2,
                                  child: Text(
                                    value2,
                                    style: TextStyle(color: Colors.black),
                                  ),
                                );
                              }).toList(),
                              hint: Text(
                                "Pilih Sesuai",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                              onChanged: (String value) {
                                if (value == 'Sesuai Profil Kompetensi'){
                                  setState(() {
                                    values = 1;
                                  });
                                };
                                if (value == 'Di Luar Profil Kompetens'){
                                  setState(() {
                                    values = 2;
                                  });
                                };
                                setState(() {
                                  _chosenValue2 = value;
                                });
                              },
                            ),
                          ]),
                      SizedBox(height: 10,),
                      Container(
                        child: _buildChild(values),
                      )
                    ],
                  ),
                ),
              ])),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
          ),
          height: 60,
          child: GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => EnrollPageThree())
              );
            },
            child: Center(child: Text('Continue', style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
          ),
        ),
      ),
    );
  }
}

Widget _buildChild(int values) {
  if (values == 1) {
    return Sesuai();
  }
  if (values == 2) {
    return TidakSesuai();
  }
}