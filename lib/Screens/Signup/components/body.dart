import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Login.dart';
import 'package:bnipersonalnotif/Screens/Login/login_screen.dart';
import 'package:bnipersonalnotif/Screens/Signup/components/background.dart';
import 'package:bnipersonalnotif/Screens/Signup/signup_screen.dart';
import 'package:bnipersonalnotif/components/already_have_an_account_acheck.dart';
import 'package:bnipersonalnotif/components/rounded_button.dart';
import 'package:bnipersonalnotif/components/rounded_input_field.dart';
import 'package:bnipersonalnotif/components/rounded_password_field.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize:26, color: Colors.teal),
            ),
            SizedBox(height: size.height * 0.08),
            Image.asset(
              "Assets/flutterlogo.png",
              height: size.height * 0.28,
            ),
            SizedBox(height: size.height * 0.07),
            RoundedInputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "SIGNUP",
              color: Colors.teal,
              press: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => Login()));
              },
            ),
            SizedBox(height: size.height * 0.03),
            AlreadyHaveAnAccountCheck(
              login: false,
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
            /*OrDivider(),
            *//*Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SocalIcon(
                  iconSrc: "assets/icons/facebook.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/twitter.svg",
                  press: () {},
                ),
                SocalIcon(
                  iconSrc: "assets/icons/google-plus.svg",
                  press: () {},
                ),
              ],
            )*/
          ],
        ),
      ),
    );
  }
}
