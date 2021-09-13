import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/QuizPage.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/p1read.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/rating.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/elearn1new.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/p1card.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/p1read.dart';

import 'p1readdd.dart';

class elearnss extends StatefulWidget {

  @override
  _elearnssState createState() => _elearnssState();
}

class _elearnssState extends State<elearnss> {
  int num =0;
  int jumlah = 0;
  int _rating = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          'Core Value AKHLAKs',
          style: TextStyle(color: Colors.teal),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.star, color: Colors.deepOrange), onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 150,
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.deepOrange,
                                ),
                                onPressed: () =>
                                    Navigator.pop(context),
                              ),
                              Text(
                                'Give Rating',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.teal,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Rating((rating) {
                            setState(() {
                              _rating = rating;
                              jumlah++;
                            });
                          }, 5),
                          SizedBox(
                              height: 44,
                              child: (_rating != null && _rating != 0)
                                  ? Text("You selected $_rating rating",
                                  style: TextStyle(fontSize: 18))
                                  : SizedBox.shrink())
                        ]
                    ),
                  ),
                );
              },
            );
          }),

        ],
      ),

      body: ListView(
      children: [
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => p1Readdd(),
              ),
            );
            setState(() {
              num +=1;
            });
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: Padding(padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                  ),
                  height: 160,
                  width: 550,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Core Value AKHLAK 1',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 15),
                        Text('E-Book',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 25,),
                        Text('14/06/2019',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text('$_rating \u2605 dari 0 orang',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                )),
          ),
        ),
        InkWell(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => p1Readdd(),
              ),
            );
            setState(() {
              num +=1;
            });
          },


          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: Padding(padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                  ),
                  height: 160,
                  width: 550,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Core Value AKHLAK 2',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 15),
                        Text('E-Book',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 25,),
                        Text('14/06/2019',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text('0 \u2605 dari 0 orang',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                )),
          ),
        ),

        InkWell(
          onTap: (){
            if (num <2){
              showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: const Text('Harap Selesaikan Semua Materi Terlebih Dahulu'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
            else{
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizPage(),
                ),
              );
            }
          },
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
            child: Padding(padding: EdgeInsets.only(left: 30, right: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.all(Radius.circular(10)
                    ),
                  ),
                  height: 160,
                  width: 550,
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Core Value AKHLAK POST TEST',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 15),
                        Text('E-Book',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        SizedBox(height: 25,),
                        Text('14/06/2019',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text('0 \u2605 dari 0 orang',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),

                )),
          ),
        ),
      ],
      ),
    );
  }
}
