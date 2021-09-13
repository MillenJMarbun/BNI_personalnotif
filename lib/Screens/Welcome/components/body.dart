import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Login/login_screen.dart';
import 'package:bnipersonalnotif/Screens/Signup/signup_screen.dart';
import 'package:bnipersonalnotif/Screens/Welcome/components/background.dart';
import 'package:bnipersonalnotif/components/rounded_button.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "BNI Corporate University",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26,color: Colors.teal),
            ),
            SizedBox(height: size.height * 0.05),
            Image.asset(
              "Assets/flutterlogo.png",
              height: size.height * 0.3, //0.45
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              color: Colors.teal,
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginScreen();
                    },
                  ),
                );
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.deepOrange,
              textColor: Colors.white,
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpScreen();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
