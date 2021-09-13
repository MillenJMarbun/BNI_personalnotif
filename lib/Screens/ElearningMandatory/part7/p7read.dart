import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'elearn330API.dart';

class p7read extends StatelessWidget {

  final elearning7 contents;
  const p7read({Key key, this.contents}) : super(key: key);

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
