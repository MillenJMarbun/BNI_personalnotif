import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part2/p2card.dart';

import 'elearn139API.dart';
import 'p2read.dart';

class elearn139 extends StatefulWidget {
  @override
  _elearn139State createState() => _elearn139State();
}

class _elearn139State extends State<elearn139> {
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
          'Anti Fraud Awareness',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: recentList2.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList2[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => p2Read(contents: recent),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: p2Card(contents: recent),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
