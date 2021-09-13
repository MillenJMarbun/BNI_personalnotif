import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/enrollHome.dart';
import 'package:bnipersonalnotif/Screens/BLW/reimbursement.dart';
import 'package:bnipersonalnotif/Screens/webView.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'drawer.dart';

class blwHome extends StatefulWidget {
  @override
  _blwHomeState createState() => _blwHomeState();
}

class _blwHomeState extends State<blwHome> {
  var saldo = 'Tap Untuk Lihat';
  var hidden = 'Tap Untuk Lihat';
  var moneyVal = 'RP. 1.200.389,73';
  var _icon = Icons.remove_red_eye_outlined;

  var link1 =
      'https://drive.google.com/file/d/1aofegz2hqK3WMaq-saI1TnIkwbVIOaBm/view?usp=sharing';
  var link2 =
      'https://drive.google.com/file/d/1jaz4RHyhPBbv-jRtf1nMfzBu7wE8QESe/view?usp=sharing';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavDrawer(),
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
          'BNI Learning Wallet',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            /*height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.grey[100],*/
            children: [
              Container(
                /*color: Colors.grey[100],*/
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('Assets/loginbg.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius:
                              BorderRadius.all(Radius.circular((20)))),
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
                                      color: Colors.teal,
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
                                Text(saldo,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold)),
                                IconButton(
                                  icon: Icon(
                                    _icon,
                                    color: Colors.white,
                                    size: 15,
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      if (_icon ==
                                          Icons.remove_red_eye_outlined) {
                                        saldo = moneyVal;
                                        _icon = CupertinoIcons.eye_slash;
                                      } else {
                                        _icon = Icons.remove_red_eye_outlined;
                                        saldo = hidden;
                                      }
                                    });
                                  },
                                ),
                              ]),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WebViewPage(
                                    link1:
                                        'https://pdfhost.io/v/KjKnJPeWE_Petunjuk_Pelaksanaan_BNI_Learning_Wallet_BLW_2021.pdf',
                                title: 'Petunjuk Pelaksanaan'),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.only(left: 30),
                            height: 90,
                            width: 150,
                            color: Colors.black,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Image.network(
                                  'https://image.flaticon.com/icons/png/512/785/785822.png',
                                  scale: 15,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('Petunjuk Pelaksanaan',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12)),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 30),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => WebViewPage(
                                    link1:
                                        'https://pdfhost.io/v/8QLeQlfPq_Petunjuk_Teknis_Aplikasi_BLW.pdf',
                                    title: 'Petunjuk Teknis'),
                              ),
                            );
                          },
                          child: Container(
                            height: 90,
                            width: 150,
                            color: Colors.black,
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Image.network(
                                  'https://image.flaticon.com/icons/png/512/785/785822.png',
                                  scale: 15,
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text('Petunjuk Teknis',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12))
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 50),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      color: Colors.deepOrange,
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 8, right: 120),
                              child: Text(
                                'Syarat Enrollment',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.teal),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => enrollHome()),
                                  );
                                },
                                child: Text(
                                  'ENROLL',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(3.5),
                          1: FlexColumnWidth(1),
                        },
                        border: TableBorder.all(color: Colors.black),
                        children: [
                          TableRow(children: [
                            Container(
                                height: 30,
                                child: Center(child: Text('Syarat'))),
                            Container(
                                height: 30,
                                child: Center(child: Text('Keterangan'))),
                          ]),
                          TableRow(children: [
                            Container(
                                margin: EdgeInsets.all(8),
                                child: Text(
                                    'Penyelesaian 3 Modul e-Learning Mandatory (Update syarat e-Learning Mandatory dilakukan setiap Senin dari hasil pengerjaan pada Kamis s.d. Minggu sebelumnya)')),
                            Container(
                                height: 100,
                                child: Center(
                                    child: Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                ))),
                          ])
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 50,
                      color: Colors.deepOrange,
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 8, right: 65),
                              child: Text(
                                'Status Reimbursement',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 30,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.teal),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ReimbursePage()),
                                  );
                                },
                                child: Text(
                                  'Reimburse',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
                      child: Table(
                        columnWidths: {
                          0: FlexColumnWidth(3.5),
                          1: FlexColumnWidth(1),
                        },
                        border: TableBorder.all(color: Colors.black),
                        children: [
                          TableRow(children: [
                            Container(
                                height: 30,
                                child: Center(child: Text('Syarat'))),
                            Container(
                                height: 30,
                                child: Center(child: Text('Keterangan'))),
                          ]),
                          TableRow(children: [
                            Container(
                                margin: EdgeInsets.all(8),
                                child: Text(
                                    'Partisipasi DEEP46 minimal 50% dalam 1 bulan terakhir atau sejak 02 Jan 2021 (Update:H+1)')),
                            Container(
                                height: 80,
                                child: Center(
                                    child: Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                ))),
                          ]),
                          TableRow(children: [
                            Container(
                                margin: EdgeInsets.all(8),
                                child: Text(
                                    'Penyelesaian 5 e-Learning Mandatory (Update syarat e-Learning Mandatory dilakukan setiap Senin dari hasil pengerjaan pada Kamis s.d. Minggu sebelumnya)')),
                            Container(
                                height: 80,
                                child: Center(
                                    child: Icon(
                                  Icons.cancel,
                                  color: Colors.red,
                                ))),
                          ]),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
