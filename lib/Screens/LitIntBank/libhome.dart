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
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: Container(
                      color: Colors.black87,
                      height: 55,
                      child: Center(
                        child: Text('Webinars',style: TextStyle(color: Colors.white, fontSize: 18),),
                      ),
                    )
                ),
                SizedBox(height: 40),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "https://drive.idcloudhost.com/s/5ZxRnnfDk8S7aF7")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(209, 224, 224, 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '1. \n Kick Off Literasi International Banking - Program Literasi BNI International Banking bagi Segenap Pegawai',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),
                              Text(
                                'Nama Pembicara: \n	Henry Panjaitan',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
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
                                   /* Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => NewSet()));*/
                                  },
                                ),
                                SpeedDialChild(
                                  child: Icon(CupertinoIcons.news, size: 20),
                                  backgroundColor: Colors.yellow,
                                  label: 'Post Test',
                                  labelStyle: TextStyle(fontSize: 12.0),
                                  onTap: () {
                                    /*addNewMeal();*/
                                  },
                                ),
                              ],
                            ),),
                          ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "	https://drive.idcloudhost.com/s/szbMzse44qCWBRt")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(209, 224, 224, 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '2. \n Opening Program Literasi (BG Map)',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),
                              Text(
                                'Nama Pembicara: \n	Eko Setyo Nugroho',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 10,),
                              Text(
                                'Topik: \n	Literasi International Banking	',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
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
                                          /* Navigator.push(context,
                                        MaterialPageRoute(builder: (context) => NewSet()));*/
                                        },
                                      ),
                                    ],
                                  ),),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "https://drive.idcloudhost.com/s/JdNmnNq9gcEW8Wi")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(209, 224, 224, 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '3. \n Video Outgoing Transfer - BNI Smart Remittance',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),

                              Text(
                                'Topik: \n	BNI Smart Remittance',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "	https://drive.idcloudhost.com/s/MaqENgRckAKEKSE")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,/*Color.fromRGBO(209, 224, 224, 0.2)*/
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 250,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '4. \n Produk & Layanan BNI Smart Remittance - Level Beginner',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),

                              Text(
                                'Topik: \n	BNI Smart Remittance',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                        SpeedDialChild(
                                          child: Icon(CupertinoIcons.news, size: 20),
                                          backgroundColor: Colors.yellow,
                                          label: 'Post Test',
                                          labelStyle: TextStyle(fontSize: 12.0),
                                          onTap: () {
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "https://drive.idcloudhost.com/s/989zzTdC6EnZp2W")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,/*Color.fromRGBO(209, 224, 224, 0.2)*/
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 260,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '5. \n Introduction to FI and Overseas Branches Business - Level Beginner',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),

                              Text(
                                'Topik: \nIntroduction to FI and Overseas Branches Business',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                        SpeedDialChild(
                                          child: Icon(CupertinoIcons.news, size: 20),
                                          backgroundColor: Colors.yellow,
                                          label: 'Post Test',
                                          labelStyle: TextStyle(fontSize: 12.0),
                                          onTap: () {
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "	https://drive.idcloudhost.com/s/qBSW579HZB5Cxw2")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,/*Color.fromRGBO(209, 224, 224, 0.2)*/
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 260,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '6. \n Trade Finance for Beginner - Level Beginner	',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),

                              Text(
                                'Topik: \nTrade Finance for Beginner',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                        SpeedDialChild(
                                          child: Icon(CupertinoIcons.news, size: 20),
                                          backgroundColor: Colors.yellow,
                                          label: 'Post Test',
                                          labelStyle: TextStyle(fontSize: 12.0),
                                          onTap: () {
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "https://drive.idcloudhost.com/s/ajDps9eTNSGQFNb")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.green,/*Color.fromRGBO(209, 224, 224, 0.2)*/
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 260,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '7. \n Treasury Knowledge - Level Beginner',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),

                              Text(
                                'Topik: \nTreasury Knowledge',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                        SpeedDialChild(
                                          child: Icon(CupertinoIcons.news, size: 20),
                                          backgroundColor: Colors.yellow,
                                          label: 'Post Test',
                                          labelStyle: TextStyle(fontSize: 12.0),
                                          onTap: () {
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "https://drive.idcloudhost.com/s/4kDkjPQm8gbg5in")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(209, 224, 224, 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 260,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '8. \n Treasury Knowledge - Level Intermediate',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),

                              Text(
                                'Topik: \nTreasury Knowledge',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "https://drive.idcloudhost.com/s/FgLLMTSZPpDZFBx")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(209, 224, 224, 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 260,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '9. \n 	Trade Finance - Level Intermediate',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),
                              Text(
                                'Topik: \nTrade Finance',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),
                Padding(
                    padding: EdgeInsets.only(left: 30, right: 30),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>
                            libWeb(link : "https://drive.idcloudhost.com/s/zPDGyXy5LeiTnWe")));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(209, 224, 224, 0.2),
                          borderRadius: BorderRadius.all(Radius.circular(10)
                          ),
                        ),
                        height: 260,
                        width: 550,
                        padding: EdgeInsets.only(top: 15, left: 10, right: 10, bottom: 10),
                        child: Center(
                          child: Column(
                            children: [
                              Text(
                                '10. \n Introduction to Overseas Branches - Level Intermediate',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 30,),
                              Text(
                                'Topik: \nOverseas Branches',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                              Align(
                                alignment: FractionalOffset.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(top: 40, right: 10),
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
                                            /* Navigator.push(context,
                                          MaterialPageRoute(builder: (context) => NewSet()));*/
                                          },
                                        ),
                                      ],
                                    ),),
                                ),
                              ),

                            ],
                          ),
                        ),

                      ),
                    )),
                SizedBox(height: 20,),


              ],
            ),
          ),
        )
    );
  }
}

