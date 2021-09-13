import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part4/dart/p4card.dart';

import 'elearn141API.dart';
import 'p4read.dart';

class elearn141 extends StatelessWidget {
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
          'Sustainability Finance',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: recentList4.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList4[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => p4read(contents: recent),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: p4card(contents: recent),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
