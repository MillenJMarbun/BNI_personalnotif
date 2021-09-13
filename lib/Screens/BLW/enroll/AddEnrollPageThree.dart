import 'package:flutter/material.dart';

class EnrollPageThree extends StatefulWidget {
  @override
  _EnrollPageThreeState createState() => _EnrollPageThreeState();
}

class _EnrollPageThreeState extends State<EnrollPageThree> {
  TextEditingController num1controller = new TextEditingController();
  TextEditingController num2controller = new TextEditingController();
  TextEditingController num3controller = new TextEditingController();
  String result = "";

  DateTime selectedDate = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  String _chosenValue9;
  int valu;

  @override
  _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  _selectendDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: selectedDate, // Refer step 1
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate2 = picked;
      });
  }

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
            Container(
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
                          'Lokasi',
                          style: TextStyle(fontSize: 14),
                        ),
                        DropdownButton<String>(
                          focusColor: Colors.white,
                          value: _chosenValue9,
                          //elevation: 5,
                          style: TextStyle(color: Colors.white),
                          iconEnabledColor: Colors.black,
                          items: <String>[
                            'Dalam Kota',
                            'Luar Kota',
                            'Luar Negri',
                          ].map<DropdownMenuItem<String>>((String value2) {
                            return DropdownMenuItem<String>(
                              value: value2,
                              child: Text(
                                value2,
                                style: TextStyle(color: Colors.black),
                              ),
                            );
                          }).toList(),
                          hint: Text(
                            "Pilih Lokasi",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                          onChanged: (String value) {
                            setState(() {
                              _chosenValue9 = value;
                            });
                          },
                        ),
                      ]),
                  SizedBox(height: 10),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Detail Lokasi',
                          style: TextStyle(fontSize: 13),
                        ),
                        Container(
                          width: 220,
                          height: 30,
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Contoh BNI CORPU Jakarta Kota',
                            ),
                          ),
                        )
                      ]),
                  SizedBox(height: 35),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Tangal Pelajaran',
                          style: TextStyle(fontSize: 16),
                        ),
                        Container(
                          height: 25,
                          width: 90,
                          child: RaisedButton(
                            onPressed: () => _selectDate(context),
                            child: Text(
                              'Tangal Mulai',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            color: Colors.deepOrange,
                          ),
                        ),
                        Container(
                          height: 25,
                          width: 90,
                          child: RaisedButton(
                            onPressed: () => _selectendDate(context),
                            child: Text(
                              'Tangal Akhir',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10),
                            ),
                            color: Colors.orange,
                          ),
                        ),
                      ]),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "${selectedDate.toLocal()}".split(' ')[0],
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        'Sampai',
                        style: TextStyle(fontSize: 15),
                      ),
                      Text(
                        "${selectedDate2.toLocal()}".split(' ')[0],
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Perkiraan Biaya Pembelajaran',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 340,
                    height: 30,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: num1controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Biaya Pembelajaran',
                      ),
                    ),
                  ),
                  SizedBox(height:15),
                  Text(
                    'Perkiraan Biaya Akomodasi',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 340,
                    height: 30,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: num2controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Biaya Akomodasi',
                      ),
                    ),
                  ),
                  SizedBox(height:15),
                  Text(
                    'Perkiraan Biaya Transportasi',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  Container(
                    width: 340,
                    height: 30,
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: num3controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Biaya Transportasi',
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    setState(() {
                      int sum = int.parse(num1controller.text) + int.parse(num2controller.text)+int.parse(num3controller.text) ;
                      result = sum.toString();
                    });
                  },
                      child: Text('Calculate')),
                  SizedBox(height:20),
                  Center(
                    child: Text(
                      'Perkiraan Biaya Reimbursement',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: Text(
                        result,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            )
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
                  MaterialPageRoute(builder: (context) => EnrollPageThree())
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
