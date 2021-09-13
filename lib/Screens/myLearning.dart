import 'package:flutter/material.dart';

class myLearning extends StatefulWidget {
  @override
  _myLearningState createState() => _myLearningState();
}

class _myLearningState extends State<myLearning> {
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
            'My Learning',
            style: TextStyle(color: Colors.teal),
          ),
          bottom: TabBar(
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: 'Learning'),
              Tab(text: 'Past Learning'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: new ListView(
                children: [
                  new Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Leadership for supervisor',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 02 Chapter 1',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 18),
                                child: Text('Detail',
                                    style: TextStyle(fontSize: 14, color: Colors.teal))
                            ),
                          ],
                        ),
                        /*Divider(),*/
                      ],

                    ),
                  ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Leadership for supervisor',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 02 Chapter 2',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 18),
                                child: Text('Detail',
                                    style: TextStyle(fontSize: 14, color: Colors.teal))
                            ),
                          ],
                        ),
                        /*Divider(),*/
                      ],

                    ),
                  ),
                  Divider(),Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Leadership for supervisor',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 02 Chapter 3',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 18),
                                child: Text('Detail',
                                    style: TextStyle(fontSize: 14, color: Colors.teal))
                            ),
                          ],
                        ),
                        /*Divider(),*/
                      ],

                    ),
                  ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Leadership for supervisor',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 02 Chapter 4',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 18),
                                child: Text('Detail',
                                    style: TextStyle(fontSize: 14, color: Colors.teal))
                            ),
                          ],
                        ),
                        /*Divider(),*/
                      ],

                    ),
                  ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Leadership for supervisor',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 02 Chapter 5',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Padding(
                                padding: EdgeInsets.only(right: 18),
                                child: Text('Detail',
                                    style: TextStyle(fontSize: 14, color: Colors.teal))
                            ),
                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
            new Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: new ListView(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Row(
                                  children: [
                                    new Text(
                                      'Leadership for supervisor',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 80),
                                        child: Icon(Icons.check_circle, color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 01 Chapter 1',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 105),
                                        child: Text('Detail',
                                            style: TextStyle(fontSize: 16, color: Colors.teal))
                                    ),
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Row(
                                  children: [
                                    new Text(
                                      'Leadership for supervisor',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 80),
                                      child: Icon(Icons.check_circle, color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 01 Chapter 2',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 105),
                                        child: Text('Detail',
                                            style: TextStyle(fontSize: 16, color: Colors.teal))
                                    ),
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Row(
                                  children: [
                                    new Text(
                                      'Leadership for supervisor',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 80),
                                      child: Icon(Icons.check_circle, color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 01 Chapter 3',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 105),
                                        child: Text('Detail',
                                            style: TextStyle(fontSize: 16, color: Colors.teal))
                                    ),
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Row(
                                  children: [
                                    new Text(
                                      'Leadership for supervisor',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 80),
                                      child: Icon(Icons.check_circle, color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 01 Chapter 4',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 105),
                                        child: Text('Detail',
                                            style: TextStyle(fontSize: 16, color: Colors.teal))
                                    ),
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    padding: EdgeInsets.only(top: 10, left: 50),
                    child: Column(
                      children: [
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /*new Container(),*///gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Row(
                                  children: [
                                    new Text(
                                      'Leadership for supervisor',
                                      style: TextStyle(
                                        color: Colors.teal,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 80),
                                      child: Icon(Icons.check_circle, color: Colors.green),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Batch 01 Chapter 5',
                                  style: TextStyle(
                                    color: Colors.teal,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 10),
                                new Row(
                                  children: [
                                    Text(
                                      '10/03/2021 s.d 15/03/2021',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 105),
                                        child: Text('Detail',
                                            style: TextStyle(fontSize: 16, color: Colors.teal))
                                    ),
                                  ],
                                )
                              ],
                            ),

                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
