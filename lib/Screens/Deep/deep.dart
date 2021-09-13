import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/Screens/Deep/deepquestions.dart';
import 'package:bnipersonalnotif/Screens/Deep/questionsImage.dart';
import 'package:photo_view/photo_view.dart';
import 'package:bnipersonalnotif/components/text_field_container.dart';


class deep extends StatefulWidget {
  @override
  _deepState createState() => _deepState();
}

class _deepState extends State<deep> {
  String imagep1 = 'https://i.postimg.cc/8PqSfvth/tb.png',
  imagep2='https://www.bni.co.id/portals/1/bni/personal/simpanan/images/bni-taplus-banner-20200814.jpg',
  imagep3= 'https://www.bni.co.id/Portals/1/BNI/Beranda/Pengumuman/Images/bni-banner-qris-mudah-2020.jpg';

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
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 30,
                  decoration: new BoxDecoration(
                    color: Colors.lightBlueAccent, //grey[100]
                  ),
                  padding: EdgeInsets.only(top: 5),
                  child: Text(
                    '\u{2139} Ujian Deep hanya bisa di akses sebelum pukul 19:00',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      color: Colors.grey[100], //grey[100]
                    ),
                    child: Column(children: [
                      Padding(
                        padding:
                            EdgeInsets.only(right: 200, bottom: 10, top: 10),
                        child: Text(
                          'Deep 46 Data Talk',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Kriteria Lulus',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 195, right: 20, top: 10),
                                  child: Text(
                                    '100',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Tipe Ujian',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 213, right: 20, top: 10),
                                  child: Text(
                                    'Post',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Jumlah Soal',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 220, right: 10, top: 10),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Status',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          2.1,
                                      right: 10,
                                      top: 10),
                                  child: Text(
                                    'Belum Ujian',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  child: Text(
                                    'Nilai',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 280,
                                      right: 10,
                                      top: 10,
                                      bottom: 10),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width /
                                  1.3, // <-- match_parent
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange,
                                ),
                                child: const Text('Ambil Ujian'),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Container(
                                          child: Column(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Row(
                                                children: [
                                                  IconButton(
                                                    icon: Icon(
                                                      Icons.arrow_back,
                                                      color: Colors.orange,
                                                    ),
                                                    onPressed: () =>
                                                        Navigator.pop(context),
                                                  ),
                                                  Text(
                                                    'Deep 46 Materi',
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.teal,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 170),
                                                    child: IconButton(
                                                      icon: Icon(
                                                          Icons.image_search),
                                                      color: Colors.teal,
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                               QuestionsImages(
                                                              image: imagep1),
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  )
                                                ],
                                              ),
                                              Image(
                                                image: AssetImage('Assets/tb.PNG'),
                                                fit: BoxFit.fitHeight,
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                    1.1,
                                                // <-- match_parent
                                                child: ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    primary: Colors.deepOrange,
                                                  ),
                                                  onPressed: () {
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            deepQuestions(
                                                                image: imagep1
                                                            ),
                                                      ),
                                                    );
                                                  },
                                                  child:
                                                      const Text('Ambil Ujian'),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ]
                                      );
                                    },
                                  );
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ])),
                Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      color: Colors.grey[100], //grey[100]
                    ),
                    child: Column(children: [
                      Padding(
                        padding:
                            EdgeInsets.only(right: 110, bottom: 10, top: 10),
                        child: Text(
                          'Deep 46 International Banking',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Kriteria Lulus',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 195, right: 20, top: 10),
                                  child: Text(
                                    '100',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Tipe Ujian',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 213, right: 20, top: 10),
                                  child: Text(
                                    'Post',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Jumlah Soal',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 220, right: 10, top: 10),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Status',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          2.1,
                                      right: 10,
                                      top: 10),
                                  child: Text(
                                    'Belum Ujian',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  child: Text(
                                    'Nilai',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 280,
                                      right: 10,
                                      top: 10,
                                      bottom: 10),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width /
                                  1.3, // <-- match_parent
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange,
                                ),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              child: Column(
                                                /*mainAxisAlignment: MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,*/
                                                children: <Widget>[
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                          Icons.arrow_back,
                                                          color: Colors.orange,
                                                        ),
                                                        onPressed: () =>
                                                            Navigator.pop(context),
                                                      ),
                                                      Text(
                                                        'Deep 46 Materi',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.teal,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 170),
                                                        child: IconButton(
                                                          icon: Icon(
                                                              Icons.image_search),
                                                          color: Colors.teal,
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) =>
                                                                    QuestionsImages(
                                                                        image: imagep2),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  Image.network('https://www.bni.co.id/portals/1/bni/personal/simpanan/images/bni-taplus-banner-20200814.jpg'),
                                                  SizedBox(
                                                    width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        1.1,
                                                    // <-- match_parent
                                                    child: ElevatedButton(
                                                      style:
                                                      ElevatedButton.styleFrom(
                                                        primary: Colors.deepOrange,
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                deepQuestions(
                                                                    image: imagep2
                                                                ),
                                                          ),
                                                        );
                                                      },
                                                      child:
                                                      const Text('Ambil Ujian'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]
                                      );
                                    },
                                  );
                                },
                                child: const Text('Ambil Ujian'),
                              ),
                            )
                          ],
                        ),
                      )
                    ])),
                Container(
                    height: 280,
                    width: MediaQuery.of(context).size.width,
                    decoration: new BoxDecoration(
                      color: Colors.grey[100], //grey[100]
                    ),
                    child: Column(children: [
                      Padding(
                        padding:
                            EdgeInsets.only(right: 110, bottom: 10, top: 10),
                        child: Text(
                          'Deep 46 International Banking 2',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        height: 220,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: new BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Kriteria Lulus',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 195, right: 20, top: 10),
                                  child: Text(
                                    '100',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Tipe Ujian',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 213, right: 20, top: 10),
                                  child: Text(
                                    'Post',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Jumlah Soal',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 220, right: 10, top: 10),
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(left: 20, top: 10),
                                  child: Text(
                                    'Status',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width /
                                          2.1,
                                      right: 10,
                                      top: 10),
                                  child: Text(
                                    'Belum Ujian',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 20, top: 10, bottom: 10),
                                  child: Text(
                                    'Nilai',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 280,
                                      right: 10,
                                      top: 10,
                                      bottom: 10),
                                  child: Text(
                                    '-',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width /
                                  1.3, // <-- match_parent
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.deepOrange,
                                ),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  Row(
                                                    children: [
                                                      IconButton(
                                                        icon: Icon(
                                                          Icons.arrow_back,
                                                          color: Colors.orange,
                                                        ),
                                                        onPressed: () =>
                                                            Navigator.pop(context),
                                                      ),
                                                      Text(
                                                        'Deep 46 Materi',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.teal,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            left: 170),
                                                        child: IconButton(
                                                          icon: Icon(
                                                              Icons.image_search),
                                                          color: Colors.teal,
                                                          onPressed: () {
                                                            Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                builder: (context) =>
                                                                    QuestionsImages(
                                                                        image: imagep3),
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                      )
                                                    ],
                                                  ),

                                                  Image.network('https://www.bni.co.id/Portals/1/BNI/Beranda/Pengumuman/Images/bni-banner-qris-mudah-2020.jpg'),
                                                  SizedBox(
                                                    width: MediaQuery.of(context)
                                                        .size
                                                        .width /
                                                        1.1,
                                                    // <-- match_parent
                                                    child: ElevatedButton(
                                                      style:
                                                      ElevatedButton.styleFrom(
                                                        primary: Colors.deepOrange,
                                                      ),
                                                      onPressed: () {
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                deepQuestions(
                                                                    image: imagep3
                                                                ),
                                                          ),
                                                        );
                                                      },
                                                      child:
                                                      const Text('Ambil Ujian'),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ]
                                      );
                                    },
                                  );
                                },
                                child: const Text('Ambil Ujian'),
                              ),
                            )
                          ],
                        ),
                      )
                    ])),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
