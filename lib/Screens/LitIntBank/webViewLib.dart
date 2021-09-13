import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class libWeb extends StatelessWidget {
  final String link;
  libWeb({Key key, @required this.link}) : super(key: key);

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
          'Literasi International Banking',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: WebView(
        initialUrl: link,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
