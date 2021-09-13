import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/elearn1.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part1/elearn1.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part2/elearn139.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part3/elearn140.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part4/dart/elearn141.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part5/elearn176.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part6/elearn291.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/part7/elearn330.dart';
class elearningM extends StatefulWidget {
  @override
  _elearningMState createState() => _elearningMState();
}

class _elearningMState extends State<elearningM> {
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
          'e-Learning Mandatory',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
          child: Column(
                children: [
                  SizedBox(height: 20,),
                  Padding(
                      padding: EdgeInsets.only(left: 30, right: 30),
                      child: Container(
                        color: Colors.black87,
                        height: 55,
                        child: Center(
                          child: Text('Corporate Core Function',style: TextStyle(color: Colors.white, fontSize: 18),),
                        ),
                      )
                  ),
                  SizedBox(height: 40),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => elearnss()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '13. \n e-Learning Mandatory Core Value AKHLAK',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),

                  SizedBox(height: 40),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => elearn1()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)
                      ),
                    ),
                    height: 100,
                    width: 550,
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                    child: Center(
                          child: Text(
                            '138. \n e-Learning Mandatory Budaya Kerja : Core Value AKHLAK',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.black, fontSize: 16),
                          ),
                        ),

                    ),
                  )),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => elearn139()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '139. \n e-Learning Mandatory Anti Fraud Awareness',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => elearn140()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '140. \n e-Learning Mandatory Anti Pencucian Uang : Cabang dan Sentra',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => elearn141()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '141. \n e-Learning Mandatory Good Corporate Governance',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          showDialog<String>(
                            context: context,
                            builder: (BuildContext context) => AlertDialog(
                              content: const Text('E-Learning Mandatory Untuk Tahun 2021 Sedang Dalam Pengembangan'),
                              actions: <Widget>[
                                TextButton(
                                  onPressed: () => Navigator.pop(context, 'OK'),
                                  child: const Text('OK'),
                                ),
                              ],
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '142. \n e-Learning Mandatory Risk Culture ',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => elearn176()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '176. \n 	e-Learning Mandatory Sustainability Finance',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => elearn291()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '291. \n e-Learning Mandatory Gratifikasi dan Anti Suap',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),
                  SizedBox(height: 30,),
                  Padding(padding: EdgeInsets.only(left: 30, right: 30),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => elearn330()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)
                            ),
                          ),
                          height: 100,
                          width: 550,
                          padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                          child: Center(
                            child: Text(
                              '330. \n e-Learning Mandatory Anti Pencucian Uang : Divisi Satuan Unit Wilayah',
                              textAlign: TextAlign.center,
                              style: TextStyle(color: Colors.black, fontSize: 16),
                            ),
                          ),

                        ),
                      )),
                  SizedBox(height: 30,),
                ],
              ),
      )
    );
  }
}
