import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/MainScreen.dart';

import '../Home.dart';

class AbsenQuestion2 extends StatefulWidget {
  @override
  _AbsenQuestion2State createState() => _AbsenQuestion2State();
}

enum KantorChat { Kantor, LuaKantor }
enum InternetChat { office, pribadi, publicc }

class _AbsenQuestion2State extends State<AbsenQuestion2> {
  KantorChat _character = KantorChat.Kantor;
  InternetChat _char = InternetChat.office;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Absen',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            color: Color.fromRGBO(239,241,244,1),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                'Survey Program Pembelajaran',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.orange,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                    border: Border.all(
                      color: Colors.transparent
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 20),
                      child: Text(
                        '1. Dimana Lokasi Anda Saat Mengikuti Pembelajaran Digital',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    RadioListTile<KantorChat>(
                      dense: true,
                      title: const Text('Kantor'),
                      value: KantorChat.Kantor,
                      groupValue: _character,
                      onChanged: (KantorChat value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                    RadioListTile<KantorChat>(
                      title: const Text('Luar Kantor'),
                      dense: true,
                      value: KantorChat.LuaKantor,
                      groupValue: _character,
                      onChanged: (KantorChat value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ],
                )),

            Container(
              margin: EdgeInsets.only(top: 10,left: 15.0, right: 15.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                    child: Text(
                      '2. Dalam mengikuti pembelajaran digital berbasis internet, fasilitas interenet apa yang anda gunakan?',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  RadioListTile<InternetChat>(
                    dense: true,
                    title: const Text('Internet Kantor'),
                    value: InternetChat.office,
                    groupValue: _char,
                    onChanged: (InternetChat value) {
                      setState(() {
                        _char = value;
                      });
                    },
                  ),
                  RadioListTile<InternetChat>(
                    dense: true,
                    title: const Text('Internet Pribadi'),
                    value: InternetChat.pribadi,
                    groupValue: _char,
                    onChanged: (InternetChat value) {
                      setState(() {
                        _char = value;
                      });
                    },
                  ),
                  RadioListTile<InternetChat>(
                    dense: true,
                    title: const Text('Internet Public'),
                    value: InternetChat.publicc,
                    groupValue: _char,
                    onChanged: (InternetChat value) {
                      setState(() {
                        _char = value;
                      });
                    },
                  ),
                ],
              ),
            ),

            SizedBox(height: 50),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.1,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                    child: Text('Submit'),
                    onPressed: () {
                      showCupertinoDialog(
                        context: context,
                        builder: (context) => CupertinoAlertDialog(
                          title: Text('Terima Kasih Sudah Mengisi Survey'),
                          actions: <Widget>[
                            if ('cancelActionText' != null)
                              CupertinoDialogAction(
                                  child: Text('Balik Home'),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MainScreen(),
                                      ),
                                    );
                                  }),
                          ],
                        ),
                      );
                    }),
              ),
            )
          ]))
      ),
    );
  }
}
