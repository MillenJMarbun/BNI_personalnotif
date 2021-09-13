import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Deep/deep.dart';
import 'package:photo_view/photo_view.dart';

class QuestionsImages extends StatefulWidget {

  QuestionsImages({Key key, this.image});
  final String image;

  @override
  _QuestionsImagesState createState() => _QuestionsImagesState();
}

class _QuestionsImagesState extends State<QuestionsImages> {

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
          'Deep 46',
          style: TextStyle(color: Colors.teal),
        ),
      ),
      body: PhotoView(
        enableRotation: true,
        backgroundDecoration: BoxDecoration(color: Colors.black),
        imageProvider: NetworkImage(widget.image)
      ),
    );
  }
}
