import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'elearn1API.dart';

class p1Read extends StatelessWidget {
  final elearning1 contents;
  const p1Read({Key key, this.contents}) : super(key: key);

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
