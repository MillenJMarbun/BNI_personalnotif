import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/info/Info.dart';
import 'package:bnipersonalnotif/Screens/MyAccount.dart';

import 'Home.dart';
import 'Messages/Messages.dart';
import 'Scan.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 50.0,
        //50
        items: <Widget>[
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(Icons.home_outlined, size: 28),
              Text(
                'Home',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          /* new Column(
            children: [*/ /*
              Icon(Icons.home_outlined, size: 30),
              */ /*new Text(
                'Home',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),*/
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(Icons.info_outline, size: 28),
              Text(
                'info',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(Icons.qr_code_scanner, size: 28),
              Text(
                'Scan',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(Icons.message_outlined, size: 28),
              Text(
                'Message',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Wrap(
            direction: Axis.vertical,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(Icons.perm_identity, size: 28),
              Text(
                'My Account',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.grey[100],
        backgroundColor: Colors.deepOrange,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: new Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: _page == 0
            ? Home()
            : _page == 1
                ? Info()
                : _page == 2
                    ? Scan()
                    : _page == 3
                        ? Messages()
                        : MyAccount(),
      ),
    );
  }
}
