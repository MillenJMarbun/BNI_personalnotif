import 'package:flutter/material.dart';

class ReimbursePage extends StatefulWidget {
  @override
  _ReimbursePageState createState() => _ReimbursePageState();
}

class _ReimbursePageState extends State<ReimbursePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
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
              'Reimbursement',
              style: TextStyle(color: Colors.teal),
            ),
            bottom: TabBar(
              isScrollable: true,
              labelColor: Colors.orange,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.orange,
              tabs: [
                Tab(text: 'Enrollment to Reimburse'),
                Tab(text: 'Reimbursement Data'),
                Tab(text: 'Reimbursement Bawahan'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView(
                scrollDirection: Axis.vertical,
                  children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Data Enrollment to reimburse',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Table(
                      columnWidths: {
                    0: FlexColumnWidth(0.4),
                    1: FlexColumnWidth(1.3),
                    2: FlexColumnWidth(1.5),
                      },
                      border: TableBorder(horizontalInside: BorderSide(width: 1, color: Colors.blue, style: BorderStyle.solid),),
                      children: [
                    TableRow(children: [
                      Container(
                          height: 30,child:Center( child: Text('NO'))),
                      Container(
                          height: 30,child:Center( child: Text('Nama Peserta'))),
                      Container(
                          height: 30,child:Center( child: Text('Program'))),
                      Container(
                          height: 30,child:Center( child: Text('Tanggal'))),
                      Container(
                          height: 30,child:Center( child: Text('Status'))),
                    ]),
                    TableRow(children: [
                      Container(
                          height: 50,child:Center( child: Text('1'))),
                      Container(
                          height: 50,child:Center( child: Text('Joshua'))),
                      Container(
                          height: 50,child:Center( child: Text('Programming Mobile'))),
                      Container(
                          height: 50,child:Center( child: Text('11/08/2021'))),
                      Container(
                          height: 50,child:Center( child: Text('Approved'))),
                    ]),
                    TableRow(children: [
                      Container(
                          height: 50,child:Center( child: Text('2'))),
                      Container(
                          height: 50,child:Center( child: Text('Shawn'))),
                      Container(
                          height: 50,child:Center( child: Text('Programming Web'))),
                      Container(
                          height: 50,child:Center( child: Text('14/08/2021'))),
                      Container(
                          height: 50,child:Center( child: Text('Approved')))
                    ]),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:30, right: 30),
                          child: Text('Actions:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                        SizedBox(
                          height: 30,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(primary: Colors.teal),
                              onPressed: () {
                                /*Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => EnrollPage()),
                                );*/
                              },
                              child: Text(
                                'Reimburse BLW',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ]),
              new Container(),
              new Container(),
            ],
          ),
        ));
  }
}
