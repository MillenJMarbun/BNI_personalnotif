import 'package:flutter/material.dart';

import 'elearn140API.dart';

class p3card extends StatelessWidget {
  final elearning3 contents;
  const p3card({Key key, this.contents}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left: 30, right: 30),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.deepOrange,
            borderRadius: BorderRadius.all(Radius.circular(10)
            ),
          ),
          height: 150,
          width: 550,
          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
          child: Center(
            child: Column(
              children: [
                Text(contents.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 15),
                Text(contents.type,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 25,),
                Text(contents.date,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                Text(contents.rating,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ],
            ),
          ),

        ));
  }
}
