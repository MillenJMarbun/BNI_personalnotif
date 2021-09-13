import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part3/p3card.dart';

import 'elearn140API.dart';
import 'p3read.dart';

class elearn140 extends StatelessWidget {
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
          'Anti Pencucian Uang : Cabang dan Sentra',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: ListView(
        children: [
          ListView.builder(
            itemCount: recentList3.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var recent = recentList3[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => p3read(contents: recent),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: p3card(contents: recent),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
