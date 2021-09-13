import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
            'Notifikasi',
            style: TextStyle(color: Colors.teal),
          ),
          bottom: TabBar(
            labelColor: Colors.orange,
            unselectedLabelColor: Colors.grey,
            indicatorColor: Colors.orange,
            tabs: [
              Tab(text: 'Unread'),
              Tab(text: 'Read'),
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
                  new Slidable(
                      actionPane: SlidableDrawerActionPane(),
                      actionExtentRatio: 0.25,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        color: Colors.white,
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
                                      'Informasi Webinar',
                                      style: TextStyle(
                                        color: Colors.lightBlue[900],
                                        fontSize: 22,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    new Text(
                                      'Watch Now',
                                      style: TextStyle(
                                        color: Colors.lightBlue[900],
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    new Row(
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye,
                                          color: Colors.grey,
                                          size: 12,
                                        ),
                                        Text(
                                          ' 16 hari yang lalu',
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                          ),
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
                      actions: <Widget>[
                        IconSlideAction(
                          caption: 'Delete',
                          color: Colors.lightBlue[900],
                          icon: Icons.delete,
                        ),
                      ]
                  ),

                  Divider(),
                  new Container(
                    padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height / 3,
                    ),
                    child: new Column(
                      children: [
                        Image.asset(
                          'Assets/unread.png',
                          height: 120,
                        ),
                        SizedBox(height: 20),
                        Text('Tidak ada Notifikasi')
                      ],
                    ),
                  ),
                ],
              ),
            ),
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
                            /*new Container(),*/ //gives some space
                            new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                new Text(
                                  'Informasi Webinar',
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Watch Now',
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey,
                                      size: 12,
                                    ),
                                    Text(
                                      ' 16 hari yang lalu',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            new IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.lightBlue[900],
                              ),
                            )
                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider(),
                  new Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
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
                                  'Informasi Webinar 2',
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Watch Now',
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey,
                                      size: 12,
                                    ),
                                    Text(
                                      ' 16 hari yang lalu',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            new IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.lightBlue[900],
                              ),
                            )
                          ],
                        ),
                        /*Divider(),*/
                      ],
                    ),
                  ),
                  Divider(),
                  new Container(
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
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
                                  'Informasi Webinar 3',
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Text(
                                  'Watch Now',
                                  style: TextStyle(
                                    color: Colors.lightBlue[900],
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(height: 5),
                                new Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.grey,
                                      size: 12,
                                    ),
                                    Text(
                                      ' 16 hari yang lalu',
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            new IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.lightBlue[900],
                              ),
                            )
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
          ],
        ),
      ),
    );
  }
}
