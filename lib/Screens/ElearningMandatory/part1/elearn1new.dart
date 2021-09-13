import 'package:flutter/material.dart';

class elearnnew extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
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
                      Text('e-Learning Mandatory Budaya Kerja : Core Value AKHLAK',
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
      ],
    );
  }
}
