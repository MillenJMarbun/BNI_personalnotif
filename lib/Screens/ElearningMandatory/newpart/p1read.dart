import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class p1Readd extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
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
          "Test",
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: WebView(
        initialUrl: 'https://www.bnicorpu.co.id/smarter/digital-pembelajaran/learning/3674',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
