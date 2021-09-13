import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'elearn141API.dart';

class p4read extends StatelessWidget {
  final elearning4 contents;
  const p4read({Key key, this.contents}) : super(key: key);

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
          contents.title,
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: WebView(
        initialUrl: contents.link,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
