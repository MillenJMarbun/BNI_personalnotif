import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll/AddEnrollPageTwo.dart';
import 'package:intl/intl.dart';

class AddEnrollPage extends StatefulWidget {
  @override
  _AddEnrollPageState createState() => _AddEnrollPageState();
}

class _AddEnrollPageState extends State<AddEnrollPage> {
  String _chosenValue;

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
          'Add Enrollment',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
                child: Text(
              'Input Enrollment Penggunaan BLW',
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            )),
            SizedBox(
              height: 30,
            ),
            Container(
              /*width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,*/
              padding: EdgeInsets.only(top: 20, left: 25, right: 25),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tanggal input Data',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          getCurrentDate(),
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                  SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NPP Pegawai (P0XXXXX):',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'P043926',
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                  SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Lengkap Pegawai',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Joshua Marbun',
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                  SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Lokasi Unit',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'KB Slipi',
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                  SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jenjang',
                          style: TextStyle(fontSize: 16),
                        ),
                        DropdownButton<String>(
                          focusColor: Colors.white,
                          value: _chosenValue,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'SEVP',
                            'EVP',
                            'SVP',
                            'VP',
                            'AVP',
                            'MGR',
                            'AMGR',
                            'ASST',
                            'PGD',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Pilih Sesuai",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _chosenValue = value;
                            });
                          },
                        ),
                      ]),
                  SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'NPP Approver (P0XXXXX)',
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'No Npp',
                            ),
                          ),
                        )
                      ]),
                  SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nama Lengkap Approver:',
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          'Nama Lengkap',
                          style: TextStyle(fontSize: 16),
                        ),
                      ]),
                  SizedBox(height: 244.3),
                ],
              ),
            ),

            /*Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                    height: 73,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => EnrollPageTwo())
                          );
                        },
                        child: Text('Continue'),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepOrange)))),*/
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.deepOrange,
        ),
        height: 60,
        child: GestureDetector(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => EnrollPageTwo())
            );
          },
          child: Center(child: Text('Continue', style: TextStyle(color: Colors.white, fontSize: 20),),
          ),
        ),
      ),
      ),
    );
  }
}

getCurrentDate() {
  return DateFormat('dd-MM-yyyy').format(DateTime.now());
}
