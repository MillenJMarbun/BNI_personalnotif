import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/BLW/blw.dart';
import 'package:bnipersonalnotif/Screens/BLW/enroll.dart';
import 'package:bnipersonalnotif/Screens/BLW/reimbursement.dart';
import 'package:bnipersonalnotif/Screens/MainScreen.dart';
import 'package:bnipersonalnotif/Screens/Welcome/welcome_screen.dart';


class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          new Container(
            decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(width: 0),
            ),
            height: 400,
            child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /*Text(
                      'Side menu',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),*/
                    SizedBox(height: 75),
                    Image.asset('Assets/flutterlogo.png'),
                  ],
                )),
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  color: Colors.black,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.home, color: Colors.white,),
                        title: Text('Home', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => WelcomeScreen(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.access_time_outlined, color: Colors.white,),
                        title: Text('Data Plan BLW', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EnrollPage(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.library_books_rounded, color: Colors.white,),
                        title: Text('Data Klaim Reimburse BLW', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ReimbursePage(),
                            ),
                          );
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.exit_to_app, color: Colors.white,),
                        title: Text('Exit', style: TextStyle(color: Colors.white)),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ))
          )

        ],
      ),
    );
  }
}
