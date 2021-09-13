import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Messages/chatPage.dart';

class Messages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
    );
  }
}

/*
class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Messages Screen'),
    );
  }
}
*/
