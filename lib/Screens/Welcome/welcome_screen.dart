import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Welcome/components/body.dart';
import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Login/login_screen.dart';
import 'package:bnipersonalnotif/Screens/Signup/signup_screen.dart';
import 'package:bnipersonalnotif/Screens/Welcome/components/background.dart';
import 'package:bnipersonalnotif/components/rounded_button.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}