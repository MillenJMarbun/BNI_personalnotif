import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part5/p5card.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part5/p5read.dart';

import 'elearn291API.dart';
import 'p6card.dart';
import 'p6read.dart';


class elearn291 extends StatelessWidget {
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
          ' Good Corporate Governance',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: recentList6.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList6[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => p6read(contents: recent),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: p6card(contents: recent),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
