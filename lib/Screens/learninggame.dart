import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LearningGame extends StatefulWidget {
  @override
  _LearningGameState createState() => _LearningGameState();
}

class _LearningGameState extends State<LearningGame> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Learning Game',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: const WebView(
        initialUrl: 'https://www.bnicorpu.co.id/smarter/',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
