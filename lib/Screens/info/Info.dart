import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/info/read_news_view.dart';
import 'package:bnipersonalnotif/Screens/info/secondary_card.dart';
import 'package:bnipersonalnotif/Screens/info/news.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, top: 30),
            child: Text(
              "News",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
          ListView.builder(
            itemCount: recentList.length,
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              var recent = recentList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ReadNewsView(news: recent),
                    ),
                  );
                },
                child: Container(
                  width: double.infinity,
                  height: 135.0,
                  margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 8.0),
                  child: SecondaryCard(news: recent),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
