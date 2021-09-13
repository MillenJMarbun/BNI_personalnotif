import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewPage extends StatelessWidget {
  final String link1, title;
  const WebViewPage({Key key, @required this.link1, @required this.title}) : super(key: key);

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
          title,
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: WebView(
        initialUrl: link1,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
