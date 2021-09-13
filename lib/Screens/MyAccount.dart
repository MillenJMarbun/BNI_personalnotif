import 'package:flutter/material.dart';

class MyAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: Column(
         /* mainAxisAlignment: MainAxisAlignment.center,*/
          children: <Widget>[
            Stack(
              children: [
                Image.asset('Assets/picrus.jpg', height: 250,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.fill),
               Align(
                 alignment: FractionalOffset.bottomCenter,
                 child: Padding(
                   padding: EdgeInsets.only(top: 200),
                   child:  CircleAvatar(
                     radius: 60.0,
                     backgroundColor: Colors.deepOrange,
                     child: CircleAvatar(
                       radius: 57,
                     backgroundImage: AssetImage('Assets/picture.jpg'),
                     )
                   ),
                 )
               )
              ],
            ),
            SizedBox(height: 30),
            Text(
              'Joshua Shawn',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 25.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'IT Intern',
              style: TextStyle(
                fontFamily: 'Source Sans Pro',
                color: Colors.teal.shade100,
                fontSize: 20.0,
                letterSpacing: 2.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 150.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '085889675819',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                )),
            Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    'joshuashawn@gmail.com',
                    style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro'),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
