import 'package:bnipersonalnotif/Screens/LitIntBank/libQuiz2.dart';
import 'package:bnipersonalnotif/Screens/LitIntBank/libQuizPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/elearn1.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/elearn1.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part2/elearn139.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part3/elearn140.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part4/dart/elearn141.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part5/elearn176.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part6/elearn291.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part7/elearn330.dart';
import 'package:bnipersonalnotif/Screens/LitIntBank/webViewLib.dart';

class libHome extends StatefulWidget {
  @override
  _libHomeState createState() => _libHomeState();
}

class _libHomeState extends State<libHome> {
  var myController1 = TextEditingController();
  var myController2 = TextEditingController();
  var myController3 = TextEditingController();
  var myController4 = TextEditingController();
  var myController5 = TextEditingController();
  var myController6 = TextEditingController();

  var box1 = Color.fromRGBO(209, 224, 224, 0.2),
      box2 = Color.fromRGBO(209, 224, 224, 0.2),
      box3 = Color.fromRGBO(209, 224, 224, 0.2),
      box4 = Color.fromRGBO(209, 224, 224, 0.2),
      box5 = Color.fromRGBO(209, 224, 224, 0.2),
      box6 = Color.fromRGBO(209, 224, 224, 0.2);

  var bool1 = false,
      bool2 = false,
      bool3 = false,
      bool4 = 0,
      bool5 = 0,
      bool6 = false;

  int charLength = 0,
      charlength1 = 0,
      charlength2 = 0,
      charlength3 = 0,
      charlength5 = 0,
      charlength6 = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }

  _onChanged1(String value) {
    setState(() {
      charlength1 = value.length;
    });
  }

  _onChanged2(String value) {
    setState(() {
      charlength2 = value.length;
    });
  }

  _onChanged3(String value) {
    setState(() {
      charlength3 = value.length;
    });
  }

  _onChanged5(String value) {
    setState(() {
      charlength5 = value.length;
    });
  }

  _onChanged6(String value) {
    setState(() {
      charlength6 = value.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color.fromRGBO(64, 75, 96, .9),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.orange,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          title: new Text(
            'Literasi international Banking',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            color: Color.fromRGBO(64, 75, 96, .9),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      color: Colors.black87,
                      height: 55,
                      child: Center(
                        child: Text(
                          'Webinars',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    )),
                SizedBox(height: 40),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          bool1 = true;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => libWeb(
                                    link:
                                        "https://drive.idcloudhost.com/s/5ZxRnnfDk8S7aF7")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: box1,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(
                            top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '1. \n Kick Off Literasi International Banking - Program Literasi BNI International Banking bagi Segenap Pegawai',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Nama Pembicara: \n	Henry Panjaitan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 240),
                                child: FloatingActionButton(
                                  child: SpeedDial(
                                    childPadding: EdgeInsets.only(left: 1),
                                    direction: SpeedDialDirection.Left,
                                    animatedIcon: AnimatedIcons.menu_close,
                                    backgroundColor: Colors.deepOrange,
                                    elevation: 3,
                                    overlayOpacity: 0,
                                    spacing: 2,
                                    spaceBetweenChildren: 5,
                                    childrenButtonSize: 40.0,
                                    children: [
                                      SpeedDialChild(
                                        child: Icon(Icons.notes),
                                        backgroundColor: Colors.blue,
                                        label: 'Resume',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool1) {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SingleChildScrollView(
                                                  child: Container(
                                                    padding: EdgeInsets.all(15),
                                                    height: 350,
                                                    color: Colors.white,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                            'Ringkasan / Resume',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20)),
                                                        SizedBox(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Judul',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 40,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                  'Kick Off Literasi International Banking - Program Literasi BNI International Banking bagi Segenap Pegawai',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .orange,
                                                                      fontSize:
                                                                          15)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Ringkasan',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 50,
                                                            ),
                                                            SizedBox(
                                                              height: 70,
                                                              width: 228,
                                                              child: TextField(
                                                                onChanged:
                                                                    _onChanged1,
                                                                controller:
                                                                    myController1,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                expands: true,
                                                                minLines: null,
                                                                maxLines: null,
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  isDense: true,
                                                                  contentPadding:
                                                                      EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0,
                                                                          vertical:
                                                                              0),
                                                                  hintText:
                                                                      "Detail Ringkasan",
                                                                  prefixIcon: Icon(
                                                                      Icons
                                                                          .subject,
                                                                      color: Colors
                                                                          .black),
                                                                  /*textAlignVertical: TextAlignVertical.top,*/
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 285),
                                                            child: Text(
                                                                "$charlength1 / 250",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16))),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        SizedBox(
                                                          width: 400,
                                                          height: 50,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              if (charlength1<250){
                                                                showDialog<String>(
                                                                  context: context,
                                                                  builder: (BuildContext context) => AlertDialog(
                                                                    content: const Text('Ringkasan Harus Melebihi 250 Character'),
                                                                    actions: <Widget>[
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(context, 'OK'),
                                                                        child: const Text('OK'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              }

                                                              else {
                                                                setState(() {
                                                                  box1 = Colors
                                                                      .green;
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }                                                     },
                                                            child: Text("Save"),
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    primary: Colors
                                                                        .deepOrange),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material terlebih dahulu sebelum mengisi Ringakasan'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          bool2 = true;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => libWeb(
                                    link:
                                        "https://drive.idcloudhost.com/s/szbMzse44qCWBRt")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: box2,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(
                            top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '2. \n Opening Program Literasi (BG Map)',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Nama Pembicara: \n	Eko Setyo Nugroho',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 240),
                                child: FloatingActionButton(
                                  child: SpeedDial(
                                    childPadding: EdgeInsets.only(left: 1),
                                    direction: SpeedDialDirection.Left,
                                    animatedIcon: AnimatedIcons.menu_close,
                                    backgroundColor: Colors.deepOrange,
                                    elevation: 3,
                                    overlayOpacity: 0,
                                    spacing: 2,
                                    spaceBetweenChildren: 5,
                                    childrenButtonSize: 40.0,
                                    children: [
                                      SpeedDialChild(
                                        child: Icon(Icons.notes),
                                        backgroundColor: Colors.blue,
                                        label: 'Resume',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool2) {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SingleChildScrollView(
                                                  child: Container(
                                                    padding: EdgeInsets.all(15),
                                                    height: 350,
                                                    color: Colors.white,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                            'Ringkasan / Resume',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20)),
                                                        SizedBox(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Judul',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 40,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                  'Opening Program Literasi (BG Map)',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .orange,
                                                                      fontSize:
                                                                          15)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Ringkasan',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 50,
                                                            ),
                                                            SizedBox(
                                                              height: 70,
                                                              width: 228,
                                                              child: TextField(
                                                                onChanged:
                                                                    _onChanged2,
                                                                controller:
                                                                    myController2,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                expands: true,
                                                                minLines: null,
                                                                maxLines: null,
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  isDense: true,
                                                                  contentPadding:
                                                                      EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0,
                                                                          vertical:
                                                                              0),
                                                                  hintText:
                                                                      "Detail Ringkasan",
                                                                  prefixIcon: Icon(
                                                                      Icons
                                                                          .subject,
                                                                      color: Colors
                                                                          .black),
                                                                  /*textAlignVertical: TextAlignVertical.top,*/
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 20),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 295),
                                                            child: Text(
                                                                "$charlength2 / 250",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16))),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        SizedBox(
                                                          width: 400,
                                                          height: 50,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              if (charlength2<250){
                                                                showDialog<String>(
                                                                  context: context,
                                                                  builder: (BuildContext context) => AlertDialog(
                                                                    content: const Text('Ringkasan Harus Melebihi 250 Character'),
                                                                    actions: <Widget>[
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(context, 'OK'),
                                                                        child: const Text('OK'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              }

                                                              else {
                                                                setState(() {
                                                                  box2 = Colors
                                                                      .green;
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }
                                                            },
                                                            child: Text("Save"),
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    primary: Colors
                                                                        .deepOrange),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material terlebih dahulu sebelum mengisi Ringakasan'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          bool3 = true;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => libWeb(
                                    link:
                                        "	https://drive.idcloudhost.com/s/JdNmnNq9gcEW8Wi")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: box3,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(
                            top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '3. \n Video Outgoing Transfer - BNI Smart Remittance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Nama Pembicara: \n	Eddo Nugroho',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 240),
                                child: FloatingActionButton(
                                  child: SpeedDial(
                                    childPadding: EdgeInsets.only(left: 1),
                                    direction: SpeedDialDirection.Left,
                                    animatedIcon: AnimatedIcons.menu_close,
                                    backgroundColor: Colors.deepOrange,
                                    elevation: 3,
                                    overlayOpacity: 0,
                                    spacing: 2,
                                    spaceBetweenChildren: 5,
                                    childrenButtonSize: 40.0,
                                    children: [
                                      SpeedDialChild(
                                        child: Icon(Icons.notes),
                                        backgroundColor: Colors.blue,
                                        label: 'Resume',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool3) {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SingleChildScrollView(
                                                  child: Container(
                                                    padding: EdgeInsets.all(15),
                                                    height: 350,
                                                    color: Colors.white,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                            'Ringkasan / Resume',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20)),
                                                        SizedBox(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Judul',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 40,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                  'Video Outgoing Transfer - BNI Smart Remittance',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .orange,
                                                                      fontSize:
                                                                          15)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Ringkasan',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 50,
                                                            ),
                                                            SizedBox(
                                                              height: 70,
                                                              width: 228,
                                                              child: TextField(
                                                                onChanged:
                                                                    _onChanged3,
                                                                controller:
                                                                    myController3,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                expands: true,
                                                                minLines: null,
                                                                maxLines: null,
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  isDense: true,
                                                                  contentPadding:
                                                                      EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0,
                                                                          vertical:
                                                                              0),
                                                                  hintText:
                                                                      "Detail Ringkasan",
                                                                  prefixIcon: Icon(
                                                                      Icons
                                                                          .subject,
                                                                      color: Colors
                                                                          .black),
                                                                  /*textAlignVertical: TextAlignVertical.top,*/
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 20),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 275),
                                                            child: Text(
                                                                "$charlength3 / 250",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16))),
                                                        SizedBox(
                                                          width: 400,
                                                          height: 50,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              if (charlength3<250){
                                                                showDialog<String>(
                                                                  context: context,
                                                                  builder: (BuildContext context) => AlertDialog(
                                                                    content: const Text('Ringkasan Harus Melebihi 250 Character'),
                                                                    actions: <Widget>[
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(context, 'OK'),
                                                                        child: const Text('OK'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              }

                                                              else {
                                                                setState(() {
                                                                  box3 = Colors
                                                                      .green;
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }
                                                            },
                                                            child: Text("Save"),
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    primary: Colors
                                                                        .deepOrange),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material terlebih dahulu sebelum mengisi Ringakasan'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          bool4 = 1;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => libWeb(
                                    link:
                                        "https://drive.idcloudhost.com/s/MaqENgRckAKEKSE")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: box4,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(
                            top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '4. \n Produk & Layanan BNI Smart Remittance - Level Beginner',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Nama Pembicara: \n	Joko Roberts',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 240),
                                child: FloatingActionButton(
                                  child: SpeedDial(
                                    childPadding: EdgeInsets.only(left: 1),
                                    direction: SpeedDialDirection.Left,
                                    animatedIcon: AnimatedIcons.menu_close,
                                    backgroundColor: Colors.deepOrange,
                                    elevation: 3,
                                    overlayOpacity: 0,
                                    spacing: 2,
                                    spaceBetweenChildren: 5,
                                    childrenButtonSize: 40.0,
                                    children: [
                                      SpeedDialChild(
                                        child: Icon(Icons.notes),
                                        backgroundColor: Colors.blue,
                                        label: 'Resume',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool4 == 1) {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SingleChildScrollView(
                                                  child: Container(
                                                    padding: EdgeInsets.all(15),
                                                    height: 350,
                                                    color: Colors.white,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                            'Ringkasan / Resume',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20)),
                                                        SizedBox(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Judul',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 40,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                  'Produk & Layanan BNI Smart Remittance - Level Beginner',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .orange,
                                                                      fontSize:
                                                                          15)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Ringkasan',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 50,
                                                            ),
                                                            SizedBox(
                                                              height: 70,
                                                              width: 228,
                                                              child: TextField(
                                                                onChanged:
                                                                    _onChanged,
                                                                controller:
                                                                    myController4,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                expands: true,
                                                                minLines: null,
                                                                maxLines: null,
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  isDense: true,
                                                                  contentPadding:
                                                                      EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0,
                                                                          vertical:
                                                                              0),
                                                                  hintText:
                                                                      "Detail Ringkasan",
                                                                  prefixIcon: Icon(
                                                                      Icons
                                                                          .subject,
                                                                      color: Colors
                                                                          .black),
                                                                  /*textAlignVertical: TextAlignVertical.top,*/
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 285),
                                                            child: Text(
                                                                "$charLength / 250",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16))),
                                                        SizedBox(
                                                          height: 20,
                                                        ),
                                                        SizedBox(
                                                          width: 400,
                                                          height: 50,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              if (charLength<250){
                                                                showDialog<String>(
                                                                  context: context,
                                                                  builder: (BuildContext context) => AlertDialog(
                                                                    content: const Text('Ringkasan Harus Melebihi 250 Character'),
                                                                    actions: <Widget>[
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(context, 'OK'),
                                                                        child: const Text('OK'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              }

                                                              else {
                                                                setState(() {
                                                                  box4 = Colors.green;
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }

                                                            },
                                                            child: Text("Save"),
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    primary: Colors
                                                                        .deepOrange),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material terlebih dahulu sebelum mengisi Ringakasan'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      SpeedDialChild(
                                        child:
                                            Icon(CupertinoIcons.news, size: 20),
                                        backgroundColor: Colors.yellow,
                                        label: 'Post Test',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool4 == 2) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        libQuiz(
                                                          tit:
                                                              "Post test BNI Smart Remittance",
                                                        )));
                                            setState(() {
                                              bool4 = 3;
                                            });
                                          } else if (bool4 == 3) {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Anda Telah Selesaikan Post Test'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material Atau Isi Resume Terlebih Dahulu'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          bool5 = 1;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => libWeb(
                                    link:
                                        "https://drive.idcloudhost.com/s/989zzTdC6EnZp2W")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: box5,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(
                            top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '5. \n Introduction to FI and Overseas Branches Business - Level Beginner',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Nama Pembicara: \n	Henry Panjaitan',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 240),
                                child: FloatingActionButton(
                                  child: SpeedDial(
                                    childPadding: EdgeInsets.only(left: 1),
                                    direction: SpeedDialDirection.Left,
                                    animatedIcon: AnimatedIcons.menu_close,
                                    backgroundColor: Colors.deepOrange,
                                    elevation: 3,
                                    overlayOpacity: 0,
                                    spacing: 2,
                                    spaceBetweenChildren: 5,
                                    childrenButtonSize: 40.0,
                                    children: [
                                      SpeedDialChild(
                                        child: Icon(Icons.notes),
                                        backgroundColor: Colors.blue,
                                        label: 'Resume',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool5 == 1) {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SingleChildScrollView(
                                                  child: Container(
                                                    padding: EdgeInsets.all(15),
                                                    height: 350,
                                                    color: Colors.white,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                            'Ringkasan / Resume',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20)),
                                                        SizedBox(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Judul',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 40,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                  'Introduction to FI and Overseas Branches Business - Level Beginner',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .orange,
                                                                      fontSize:
                                                                          15)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Ringkasan',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 50,
                                                            ),
                                                            SizedBox(
                                                              height: 70,
                                                              width: 228,
                                                              child: TextField(
                                                                onChanged:
                                                                    _onChanged5,
                                                                controller:
                                                                    myController5,
                                                                keyboardType:
                                                                    TextInputType
                                                                        .multiline,
                                                                expands: true,
                                                                minLines: null,
                                                                maxLines: null,
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  isDense: true,
                                                                  contentPadding:
                                                                      EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0,
                                                                          vertical:
                                                                              0),
                                                                  hintText:
                                                                      "Detail Ringkasan",
                                                                  prefixIcon: Icon(
                                                                      Icons
                                                                          .subject,
                                                                      color: Colors
                                                                          .black),
                                                                  /*textAlignVertical: TextAlignVertical.top,*/
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(height: 20),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 285),
                                                            child: Text(
                                                                "$charlength5 / 250",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16))),
                                                        SizedBox(
                                                          width: 400,
                                                          height: 50,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              if (charlength5<250){
                                                                showDialog<String>(
                                                                  context: context,
                                                                  builder: (BuildContext context) => AlertDialog(
                                                                    content: const Text('Ringkasan Harus Melebihi 250 Character'),
                                                                    actions: <Widget>[
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(context, 'OK'),
                                                                        child: const Text('OK'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              }

                                                              else {
                                                                setState(() {
                                                                  box5 = Colors.green;
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }
                                                            },
                                                            child: Text("Save"),
                                                            style: ElevatedButton
                                                                .styleFrom(
                                                                    primary: Colors
                                                                        .deepOrange),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material terlebih dahulu sebelum mengisi Ringakasan'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                      SpeedDialChild(
                                        child:
                                            Icon(CupertinoIcons.news, size: 20),
                                        backgroundColor: Colors.yellow,
                                        label: 'Post Test',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool5 == 2) {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        LibQuiz2(
                                                          tit:
                                                              "Post test FI and Overseas Branches Business",
                                                        )));
                                            setState(() {
                                              bool5 = 3;
                                            });
                                          } else if (bool5 == 3) {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Anda Telah Selesaikan Post Test'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material Atau Isi Resume Terlebih Dahulu'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          bool6 = true;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => libWeb(
                                    link:
                                        "	https://drive.idcloudhost.com/s/qBSW579HZB5Cxw2")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: box6,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(
                            top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '6. \n 	Trade Finance for Beginner - Level Beginner',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              Text(
                                'Nama Pembicara: \n	Aditya Pratama',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 25, left: 240),
                                child: FloatingActionButton(
                                  child: SpeedDial(
                                    childPadding: EdgeInsets.only(left: 1),
                                    direction: SpeedDialDirection.Left,
                                    animatedIcon: AnimatedIcons.menu_close,
                                    backgroundColor: Colors.deepOrange,
                                    elevation: 3,
                                    overlayOpacity: 0,
                                    spacing: 2,
                                    spaceBetweenChildren: 5,
                                    childrenButtonSize: 40.0,
                                    children: [
                                      SpeedDialChild(
                                        child: Icon(Icons.notes),
                                        backgroundColor: Colors.blue,
                                        label: 'Resume',
                                        labelStyle: TextStyle(fontSize: 12.0),
                                        onTap: () {
                                          if (bool6) {
                                            showModalBottomSheet<void>(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return SingleChildScrollView(
                                                  child: Container(
                                                    padding: EdgeInsets.all(15),
                                                    height: 350,
                                                    color: Colors.white,
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: <Widget>[
                                                        Text(
                                                            'Ringkasan / Resume',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 20)),
                                                        SizedBox(
                                                          height: 30,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Judul',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 40,
                                                            ),
                                                            Flexible(
                                                              child: Text(
                                                                  'Trade Finance for Beginner - Level Beginner',
                                                                  textAlign:
                                                                      TextAlign
                                                                          .right,
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .orange,
                                                                      fontSize:
                                                                          15)),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: 35,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text('Ringkasan',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .black,
                                                                    fontSize:
                                                                        18)),
                                                            SizedBox(
                                                              width: 50,
                                                            ),
                                                            SizedBox(
                                                              height: 70,
                                                              width: 228,
                                                              child: TextField(
                                                                onChanged:
                                                                    _onChanged6,
                                                                controller: myController6,
                                                                keyboardType: TextInputType.multiline,
                                                                expands: true,
                                                                minLines: null,
                                                                maxLines: null,
                                                                decoration:
                                                                    InputDecoration(
                                                                  border:
                                                                      OutlineInputBorder(),
                                                                  isDense: true,
                                                                  contentPadding:
                                                                      EdgeInsets.symmetric(
                                                                          horizontal:
                                                                              0,
                                                                          vertical:
                                                                              0),
                                                                  hintText:
                                                                      "Detail Ringkasan",
                                                                  prefixIcon: Icon(
                                                                      Icons
                                                                          .subject,
                                                                      color: Colors
                                                                          .black),
                                                                  /*textAlignVertical: TextAlignVertical.top,*/
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    top: 10,
                                                                    left: 285),
                                                            child: Text(
                                                                "$charlength6 / 250",
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        16))),
                                                        SizedBox(height: 20),
                                                        SizedBox(
                                                          width: 400,
                                                          height: 50,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              if (charlength6<250){
                                                                showDialog<String>(
                                                                  context: context,
                                                                  builder: (BuildContext context) => AlertDialog(
                                                                    content: const Text('Ringkasan Harus Melebihi 250 Character'),
                                                                    actions: <Widget>[
                                                                      TextButton(
                                                                        onPressed: () => Navigator.pop(context, 'OK'),
                                                                        child: const Text('OK'),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                );
                                                              }

                                                              else {
                                                                setState(() {
                                                                  box6 = Colors
                                                                      .green;
                                                                });
                                                                Navigator.pop(
                                                                    context);
                                                              }

                                                            },
                                                            child: Text("Save"),
                                                            style: ElevatedButton.styleFrom(
                                                                    primary: Colors
                                                                        .deepOrange),
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              },
                                            );
                                          } else {
                                            showDialog<String>(
                                              context: context,
                                              builder: (BuildContext context) =>
                                                  AlertDialog(
                                                content: const Text(
                                                    'Silahkan Review Material terlebih dahulu sebelum mengisi Ringakasan'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () =>
                                                        Navigator.pop(
                                                            context, 'OK'),
                                                    child: const Text('OK'),
                                                  ),
                                                ],
                                              ),
                                            );
                                          }
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ));
  }
}
