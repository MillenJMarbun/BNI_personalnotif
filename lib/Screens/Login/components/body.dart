import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Login/components/background.dart';
import 'package:bnipersonalnotif/Screens/MainScreen.dart';
import 'package:bnipersonalnotif/Screens/Signup/signup_screen.dart';
import 'package:bnipersonalnotif/api/local_auth_api.dart';
import 'package:bnipersonalnotif/components/already_have_an_account_acheck.dart';
import 'package:bnipersonalnotif/components/rounded_button.dart';
import 'package:bnipersonalnotif/components/rounded_input_field.dart';
import 'package:bnipersonalnotif/components/rounded_password_field.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Text(
          "LOGIN",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.teal),
        ),
        SizedBox(height: size.height * 0.08),
        Image.asset(
          "Assets/flutterlogo.png",
          height: size.height * 0.28,
        ),
        SizedBox(height: size.height * 0.07),
        RoundedInputField(
          hintText: "Username",
          onChanged: (value) {},
        ),
        RoundedPasswordField(
          onChanged: (value) {},
        ),
        Padding(
          padding: EdgeInsets.only(left: 180),
          child: Text(
            'Forgot Password?',
            style:
            TextStyle(fontStyle: FontStyle.italic, color: Colors.teal),
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Container(
              width: 290,
              height: 40,
              padding: EdgeInsets.only(left: 50, right: 7),
              child: ElevatedButton(
                child: Text('LOGIN'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.red)
                  ),
                ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => MainScreen()));
                  },
                ),
              ),
              IconButton(icon: Icon(Icons.fingerprint),
                iconSize: 33.0,
                onPressed: () async {
                  final isAuthenticated = await LocalAuthApi.authenticate();
                  if (isAuthenticated) {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  }
                },
              )
              ],
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
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
