import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/elearn1.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/newpart/rating.dart';
import 'package:webview_flutter/webview_flutter.dart';


class p1Readdd extends StatefulWidget {

  @override
  _p1ReadddState createState() => _p1ReadddState();
}

class _p1ReadddState extends State<p1Readdd> {
  int ratingg;
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
        actions: <Widget>[
          IconButton(icon: Icon(Icons.star, color: Colors.deepOrange), onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 150,
                  child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: Colors.deepOrange,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => elearnss(),
                                    ),
                                  );
                                }
                              ),
                              Text(
                                'Give Rating',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.teal,
                                  fontWeight:
                                  FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Rating((rating) {
                            setState(() {
                              rating = rating;
                            });
                          }, 5),
                          SizedBox(
                              height: 44,
                              child: (ratingg != null && ratingg != 0)
                                  ? Text("You selected $ratingg rating",
                                  style: TextStyle(fontSize: 18))
                                  : SizedBox.shrink())
                        ]
                    ),
                  ),
                );
              },
            );
          }),

        ],
      ),
      body: WebView(
        initialUrl: 'https://www.youtube.com/c/BNICorporateUniversity?&ab_',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
