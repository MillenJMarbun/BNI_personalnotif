import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/elearn1new.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/p1card.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/p1read.dart';
import 'elearn1API.dart';

class elearn1 extends StatefulWidget {
  @override
  _elearn1State createState() => _elearn1State();
}

class _elearn1State extends State<elearn1> {
  int num =0;
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
          'Budaya Kerja : Core Value AKHLAK',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: ListView(
      children: [
        ListView.builder(
            itemCount: recentList1.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            var recent = recentList1[index];
            return InkWell(
              onTap: ()  async {
               /* setState(() {
                  num += 1 ;
                });
                */
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => p1Read(contents: recent),
                    ),
                  );
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                child: pt1Card(contents: recent),
              ),
            );
          },
        ),
        Text('$num'),
      ],
      ),
    );
  }
}
