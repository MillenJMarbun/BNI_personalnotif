import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'enroll/AddEnrollPageone.dart';

class EnrollPage extends StatefulWidget {
  @override
  _EnrollPageState createState() => _EnrollPageState();
}

class _EnrollPageState extends State<EnrollPage> {

  var moneyVal = 'RP. 1.200.389,73';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            'Enrollment',
            style: TextStyle(color: Colors.teal),
          ),
          bottom: TabBar(
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: 'Daftar Enrollment Bawahan'),
              Tab(text: 'Daftar Enrollment Bawahan'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ///tab 1
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: new ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.all(Radius.circular((20)))),
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.only(left: 15, right: 15),
                    height: 180,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('Nama Pegawai',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: EdgeInsets.only(left: 80),
                                child: Text('Joshua M',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Row(
                            children: [
                              Text('PPN Pegawai',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Padding(
                                padding: EdgeInsets.only(left: 100),
                                child: Text('P043926',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox (height: 40),
                        Row(
                          children: [
                            SizedBox(
                              height: 30,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(primary: Colors.teal),
                                  onPressed: () {
                                    showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Container(
                                                child: Column(
                                                  /*mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,*/
                                                  children: <Widget>[
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
                                                          'Deep 46 Materi',
                                                          style: TextStyle(
                                                            fontSize: 18,
                                                            color: Colors.teal,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          color: Colors.deepOrange,
                                                          borderRadius: BorderRadius.all(Radius.circular((20)))),
                                                      margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                                                      height: 200,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          SizedBox(height: 35),
                                                          Center(
                                                              child: Text('Saldo Anda Saat Ini',
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 24,
                                                                      fontWeight: FontWeight.bold))),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Center(
                                                              child: Text('Kuota BLW Anda Adalah Sebesar',
                                                                  style: TextStyle(
                                                                      color: Colors.white,
                                                                      fontSize: 12,
                                                                      fontWeight: FontWeight.bold))),
                                                          SizedBox(
                                                            height: 30,
                                                          ),
                                                          Row(
                                                              mainAxisAlignment: MainAxisAlignment.center,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                Text(moneyVal,
                                                                    style: TextStyle(
                                                                        color: Colors.white,
                                                                        fontSize: 25,
                                                                        fontWeight: FontWeight.bold)),
                                                              ]),

                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(height: 18)
                                                  ],
                                                ),
                                              ),
                                            ]
                                        );
                                      },
                                    );
                                  },
                                  child: Text(
                                    'Saldo',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left:130),
                              child: SizedBox(
                                height: 30,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Colors.teal),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => AddEnrollPage()),
                                      );
                                    },
                                    child: Text(
                                      'Add Enrollment',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    )),
                              )
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),

            ///tab2
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: new ListView(
                children: [
                  new Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.orange,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*/ //gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Container 1',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                              ],
                            ),

                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
