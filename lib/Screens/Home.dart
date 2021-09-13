import 'dart:core';
import 'package:bnipersonalnotif/Screens/Absen/absen.dart';
import 'package:bnipersonalnotif/Screens/BLW/blw.dart';
import 'package:bnipersonalnotif/Screens/ElearningMandatory/elearningman.dart';
import 'package:bnipersonalnotif/Screens/Event.dart';
import 'package:bnipersonalnotif/Screens/LitIntBank/libhome.dart';
import 'package:bnipersonalnotif/Screens/Messages/Messages.dart';
import 'package:bnipersonalnotif/Screens/MyAccount.dart';
import 'package:bnipersonalnotif/Screens/Notifications.dart';
import 'package:bnipersonalnotif/Screens/Deep/deep.dart';
import 'package:bnipersonalnotif/Screens/Scan.dart';
import 'package:bnipersonalnotif/Screens/Weather/Weatsher.dart';
import 'package:bnipersonalnotif/Screens/info/Info.dart';
import 'package:bnipersonalnotif/Screens/learninggame.dart';
import 'package:bnipersonalnotif/Screens/myLearning.dart';
import 'package:bnipersonalnotif/Screens/unleash.dart';
import 'package:bnipersonalnotif/Widgets/BG.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:hexagon/hexagon.dart';
import 'package:search_page/search_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _url = 'https://bit.ly/3zjhrRQ';
const _url2 = 'https://www.instagram.com/bni.corpu/?hl=en';

final isFavoritesEditHappening = ValueNotifier<bool>(false); //change in value causes all listening widgets to reload

final List<String> imgList = [
  'Assets/ban0.jpg',
  'Assets/ban1.jpg',
  'Assets/ban3.jpg',
  'Assets/ban4.jpg',
  'Assets/ban5.jpg',
  'Assets/ban6.jpg',
];

class FavoriteInkwell{
  String title; //Inkwell  text
  Widget page; //page to load on tap
  IconData iconData; //Inkwell icon

  FavoriteInkwell(String t, Widget w, IconData i){
    this.title = t;
    this.page = w;
    this.iconData = i;
  }
}

//List of all inkwell items.
List<FavoriteInkwell> allInkwells = [
  new FavoriteInkwell("My Learning", myLearning(), Icons.trending_up_outlined),
  new FavoriteInkwell("Deep46",  deep(), Icons.lightbulb_outline),
  new FavoriteInkwell('More Unleash',Unleash(), Icons.airplanemode_active),
  new FavoriteInkwell('Learning Game',LearningGame(), Icons.book),
  new FavoriteInkwell('Absen',Absen(), Icons.access_time),
  new FavoriteInkwell('Event', Event(), Icons.event),
  new FavoriteInkwell('BLW', blwHome(), Icons.account_balance_wallet_outlined ),
  new FavoriteInkwell('ELearning', elearningM(), Icons.phone_android),
  new FavoriteInkwell('L I B', libHome(), Icons.public),
  new FavoriteInkwell('Tab5', deep(), Icons.lightbulb_outline),
  new FavoriteInkwell('Tab6', deep(), Icons.lightbulb_outline),
  new FavoriteInkwell('Tab7', deep(), Icons.lightbulb_outline),
  new FavoriteInkwell('More', Container(), Icons.settings) //ALWAYS keep the 'More' inkwell last in the list
];

class Home extends StatefulWidget {
  static List<int> favoriteIndices = [0,1,2,3,4,5,6,7];  //list of indices in inkwells
  @override
  _HomeState createState() => _HomeState();
}

//Shows 'Edit' or 'Save' based on isFavoritesEditHappening value
Widget dynamicTextButton(){
  Widget w;

  if(isFavoritesEditHappening.value){
    w = TextButton(
      //onPressed: () => Navigator.pop(context),
      onPressed: () {
        SharedPreferences prefs;
        SharedPreferences.getInstance().then((value) {
          prefs = value;
          List<String> temp = [];
          Home.favoriteIndices.forEach((element) {
            temp.add(element.toString());
          });
          prefs.setStringList('favoriteIndices', temp);
        });
        isFavoritesEditHappening.value = !isFavoritesEditHappening.value;
      },
      child: Text("Save"),
      style: TextButton.styleFrom(
          primary: Colors.white,
          backgroundColor: Colors.deepOrange,
          side: BorderSide(color:Colors.black, width:1)
      ),
    );

  }
  else{
    w = TextButton(
      //onPressed: () => Navigator.pop(context),
      onPressed: () => {isFavoritesEditHappening.value = !isFavoritesEditHappening.value},
      child: Text("Edit"),
      style: TextButton.styleFrom(
          primary: Colors.orange,
          backgroundColor: Colors.white,
          side: BorderSide(color:Colors.orange, width:1)
      ),
    );
  }
  return w;
}
class _HomeState extends State<Home> {
  int _current = 0;
  double _currentSliderValue = 20;
  double _progressValue = 0.5;
  double _progressValue1 = 0.7;

  static List<String> screens = [
    'My Learning',
    'Deep 46',
    'More Unleash',
    'Learning Game',
    'Weather',
    'Notifications',
    'Info',
    'Absen',
    'Messages',
    'Scan',
    'My Profile',
    'Event',
    'BLW',
    'ELearning',
  ];

  final List<Widget> imageSliders = imgList
      .map(
        (item) => Image.asset(
      item,
      // height: 30, //30
      // width: 1000,
    ),
  )
      .toList();

  Widget hexagonWidget(
      Color color, String text1, String text2, String text3, String asset) {
    return new Container(
      height: 80, //80,75
      width: 80,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17), //background color size
            child: HexagonWidget.flat(
              width: 70, //70
              color: color,
              padding: 4.0, //4
            ),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: HexagonWidget.flat(
              elevation: 5,
              width: 75, //65
              color: Colors.white,
              padding: 4.0,
            ),
          ),
          Positioned(
            top: 20,
            left: 4, //9
            child: new CircleAvatar(
              radius: 8,
              backgroundColor: color,
            ),
          ),
          Positioned(
            top: 16,
            left: 26,
            child: Text(
              'Text 1',
              style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Positioned(
            top: 34,
            left: 21,
            child: Text(
              'Text 2',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          Positioned(
            top: 57,
            left: 25,
            child: Text(
              'Text 3',
              style: TextStyle(
                fontSize: 7,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
          ),
          Positioned(
            top: 2,
            left: 2,
            child: Image.asset(
              asset,
              height: 27,
            ),
          )
        ],
      ),
    );
  }

  Widget cardWigdet(String txt, icon, {Color color = Colors.white}) {
    return Card(
      elevation: 5,
      child: new Container(
        height: 70,
        width: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: Column(
          children: [
            new Icon(
              icon,
              color: Colors.cyan,
              size: 40,
            ),
            SizedBox(height: 5),
            Text(
              txt,
              style: TextStyle(
                fontSize: 10,
                color: Colors.yellow[900],
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  void navigate(screenName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screenName,
      ),
    );
  }

  //function for getting inidividual inkwells for collective inkwell function calls
  Widget getIndividualInkwell(String screenTitle, Widget pageToShow, IconData ico, Color color){
    InkWell temp = new InkWell(
      onTap: () {
        if(isFavoritesEditHappening.value){
          FavoriteInkwell temp = allInkwells.where((element) => element.title == screenTitle).first;
          int index = allInkwells.indexOf(temp);
          if(Home.favoriteIndices.contains(index)){
            Home.favoriteIndices.remove(index);
          }
          else{
            if(Home.favoriteIndices.length<8)
              Home.favoriteIndices.add(index);
            else
              print("Max 8 favorites possible");
          }
          isFavoritesEditHappening.value = !isFavoritesEditHappening.value;
          isFavoritesEditHappening.value = !isFavoritesEditHappening.value;
        }
        else{
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => pageToShow,
            ),
          );
        }
      },
      child: cardWigdet(
          screenTitle, ico, color: color),
    );


    if(screenTitle==allInkwells.last.title){ //For the 'MORE' inkwell. Shows a bottomModal on tab
      temp = new InkWell(
        onTap: () {
          showModalBottomSheet<void>(
            isScrollControlled: true,
            context: context,
            builder: (BuildContext context) {
              return ValueListenableBuilder(
                  valueListenable: isFavoritesEditHappening,
                  builder: (context, value, widget){
                    return Wrap(children: [
                      Column(
                          children:getInkwellsForBottomModal()
                      )
                    ]);
                  });
            },
          );
        },
        child: cardWigdet(
            screenTitle, ico),
      );
    }

    return temp;
  }

  //gets list of all widgets for bottom Modal
  //Widget list: Header row, Favorite Inkwells, Header row for other inkwells, Other Inkwells
  List<Widget> getInkwellsForBottomModal(){
    List<Widget> rowsToDisplay = List<Widget>.empty(growable:true);
    List<Widget> rowChildren = [];
    int count =0;
    int gridN = 3;
    List<Widget> headerRowChildren = [
      Padding(padding: EdgeInsets.only(top:10, right:10),
          child:Text("Favorites", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      ),
      /*Container(),*/
      Container(),
      Padding(padding: EdgeInsets.only(top:10),
      child:dynamicTextButton()
      ),
    ];
    rowsToDisplay.add(Row(children: headerRowChildren, mainAxisAlignment: MainAxisAlignment.spaceAround));
    rowsToDisplay.add(SizedBox(height: 15));
    allInkwells.forEach((element) {
      FavoriteInkwell temp = element;
      if(Home.favoriteIndices.contains(count)){
        InkWell temp2  = getIndividualInkwell(temp.title, temp.page, temp.iconData, Colors.white/*red[100]*/);
        rowChildren.add(temp2);
      }
      count++;
      if(rowChildren.length == gridN){
        Row r = new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.from(rowChildren));
        rowsToDisplay.add(r);
        //rowsToDisplay.add(SizedBox(height: 15));
        rowChildren = [];
      }
    });

    if(rowChildren.length!=0){
      Row r = new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.from(rowChildren));
      rowsToDisplay.add(r);
      //rowsToDisplay.add(SizedBox(height: 15));
      rowChildren = [];
    }

    rowsToDisplay.add(SizedBox(height: 35));

    List<Widget> headerRowChildren2 = [
      Text("Others", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      Container(),
      Container(),
      Container(),
      Container(),
    ];
    rowsToDisplay.add(Row(children: headerRowChildren2, mainAxisAlignment: MainAxisAlignment.spaceAround));
    rowsToDisplay.add(SizedBox(height: 15));
    count = 0;
    allInkwells.forEach((element) {
      FavoriteInkwell temp = element;
      if(!Home.favoriteIndices.contains(count) && count<allInkwells.length-1){
        rowChildren.add(getIndividualInkwell(temp.title, temp.page, temp.iconData, Colors.white));
      }
      count++;
      if(count==allInkwells.length || rowChildren.length==gridN){
        Row r = new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.from(rowChildren));
        rowsToDisplay.add(r);
        //rowsToDisplay.add(SizedBox(height: 15));
        rowChildren = [];
      }
    });
    // Row r = new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.from(rowChildren));
    // rowsToDisplay.add(r);
    // rowsToDisplay.add(SizedBox(height: 15));
    return rowsToDisplay;
  }


  //Inkwells to show in the home page
  List<Widget> getInkwellsToDisplay(){
    List<Widget> rowsToDisplay = List<Widget>.empty(growable:true);
    List<Widget> rowChildren = [];
    int count =0;

    Home.favoriteIndices.forEach((element) {
      FavoriteInkwell temp = allInkwells[element];
      rowChildren.add(getIndividualInkwell(temp.title, temp.page, temp.iconData, Colors.white));
      count++;
      if(count==3){
        Row r = new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.from(rowChildren));
        rowsToDisplay.add(r);
        rowsToDisplay.add(SizedBox(height: 15));
        rowChildren = [];
      }

      else if (count == 6){
        Row r = new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.from(rowChildren));
        rowsToDisplay.add(r);
        rowsToDisplay.add(SizedBox(height: 15));
        rowChildren = [];
      }
    });
    FavoriteInkwell temp = allInkwells.last;
    rowChildren.add(getIndividualInkwell(temp.title, temp.page, temp.iconData, Colors.white));
    Row r = new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: List.from(rowChildren));
    rowsToDisplay.add(r);
    rowsToDisplay.add(SizedBox(height: 30));
    rowChildren = [];

    return rowsToDisplay;
  }

  Future<bool> _onWillPop() async {
    return (await showDialog(
      context: context,
      builder: (context) => new AlertDialog(
        title: new Text('Are you sure?'),
        content: new Text('Do you want to exit an App'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: new Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: new Text('Yes'),
          ),
        ],
      ),
    )) ?? false;
  }
  
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            BG(),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Container(
                  child: new Column(
                    children: [
                      GestureDetector(
                        onTap: () => showSearch(
                          context: context,
                          delegate: SearchPage(
                            barTheme: ThemeData(
                              primarySwatch: Colors.deepOrange,
                            ),
                            onQueryUpdate: (s) => print(s),
                            items: screens,
                            searchLabel: 'Search Pages',
                            suggestion: Center(
                              child: Text('Enter A Page Name To Search'),
                            ),
                            failure: Center(
                              child: Text('No Pages found'),
                            ),
                            filter: (screen) => [screen],
                            builder: (screen) => GestureDetector(
                              onTap: () {
                                screen == 'My Learning'
                                    ? navigate(myLearning())
                                    : screen == 'Deep 46'
                                    ? navigate(deep())
                                    : screen == 'More Unleash'
                                    ? navigate(Unleash())
                                    : screen == 'Learning Game'
                                    ? navigate(LearningGame())
                                    : screen == 'Absen'
                                    ? navigate(Absen())
                                    : screen == 'Weather'
                                    ? navigate(Weather())
                                    : screen == 'Notification'
                                    ? navigate(Notifications())
                                    : screen == 'Info'
                                    ? navigate(Info())
                                    : screen == 'My Profile'
                                    ? navigate(MyAccount())
                                    : screen == 'Scan'
                                    ? navigate(Scan())
                                    : screen == 'Messages'
                                    ? navigate(Messages())
                                    : screen == 'BLW'
                                    ? navigate(blwHome())
                                    : screen == 'ELearning'
                                    ? navigate(elearningM())
                                    : navigate(Event());
                              },
                              child: ListTile(
                                title: Text(screen),
                                trailing: screen == 'My Learning'
                                    ? Icon(Icons.trending_up_outlined, color: Colors.teal)
                                    : screen == 'Deep 46'
                                    ? Icon(Icons.lightbulb_outline, color: Colors.teal)
                                    : screen == 'More Unleash'
                                    ? Icon(Icons.airplanemode_active,color: Colors.teal)
                                    : screen == 'Learning Game'
                                    ? Icon(Icons.book,color: Colors.teal)
                                    : screen == 'Absen'
                                    ? Icon(Icons.access_time,color: Colors.teal)
                                    : screen == 'Weather'
                                    ? Icon(Icons.wb_sunny,color: Colors.teal)
                                    : screen == 'Notification'
                                    ? Icon(Icons.notifications,color: Colors.teal)
                                    : screen == 'Info'
                                    ? Icon(Icons.info_outline,color: Colors.teal)
                                    : screen == 'Scan'
                                    ? Icon(Icons.qr_code,color: Colors.teal)
                                    : screen == 'Messages'
                                    ? Icon(Icons.message,color: Colors.teal)
                                    : screen == 'My Profile'
                                    ? Icon(Icons.account_box,color: Colors.teal)
                                    : screen == 'BLW'
                                    ? Icon(Icons.account_balance_wallet,color: Colors.teal)
                                    : screen == 'ELearning'
                                    ? Icon(Icons.phone_android,color: Colors.teal)
                                    : Icon(Icons.event, color: Colors.teal),
                              ),
                            ),
                          ),
                        ),
                        child: new Container(
                          //container for search bar
                          padding: EdgeInsets.only(
                              right: 20, left: 20, top: 40), // 20,20,40
                          child: new Row(
                            children: [
                              new Container(
                                padding: EdgeInsets.all(4),
                                height: 30,
                                width: MediaQuery.of(context).size.width / 1.37,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                                ),
                                child: Row(
                                  children: [
                                    Icon(Icons.search),
                                    SizedBox(width: 10),
                                    Text('Search'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                  width: 30), //space between search bar and the notification
                              new InkWell(
                                onTap: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Notifications(),
                                  ),
                                ),
                                child: new Stack(
                                  children: [
                                    Icon(
                                      Icons.notifications,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    new Positioned(
                                      top: 5,
                                      right: 3,
                                      child: CircleAvatar(
                                        radius: 5,
                                        backgroundColor: Colors.red,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 100), //space between search bar and the slider

                      new Container(
                        //container for image
                        // padding: EdgeInsets.all(4),
                        // height: 70,
                        width: MediaQuery.of(context).size.width /
                            1.2, //controls how wide it is, if its not divided its fully stretched
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(
                              5.0)), //controls how rounded the edges are
                        ),
                        child: Stack(
                          children: [
                            CarouselSlider(
                              options: CarouselOptions(
                                // height: 70,
                                  aspectRatio:
                                  2.98, //controls the image size  2.98
                                  enlargeCenterPage: true,
                                  scrollDirection: Axis.horizontal,
                                  autoPlay: true,
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _current = index;
                                    });
                                  }),
                              items: imageSliders,
                            ),
                            Positioned(
                              bottom: 0,
                              left: 0,
                              right: 0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: imgList.map((url) {
                                  int index = imgList.indexOf(url);
                                  return Container(
                                    width: 6.0, //how big the circles are
                                    height: 6.0,
                                    margin: EdgeInsets.symmetric(
                                        vertical: 0.0,
                                        horizontal:
                                        1.5 // how far away the dots are from each other
                                    ),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: _current == index
                                          ? Color.fromRGBO(0, 0, 0, 0.9)
                                          : Color.fromRGBO(0, 0, 0,
                                          0.4), //change from opaque to darker
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        //container for avatar face and slider bar
                        padding: EdgeInsets.only(top: 20, right: 10, left: 25),
                        child: new Row(
                          //row for the stuff inside
                          children: [
                            new CircleAvatar(
                              backgroundImage: AssetImage('Assets/poige.png'),
                              radius: 25,
                              backgroundColor: Colors.grey,
                            ),
                            new SizedBox(width: 15),
                            new Column(
                              //container for the blue slider
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width / 1.9,
                                  child: LinearProgressIndicator(
                                    minHeight: 10,
                                    backgroundColor: Colors.grey,
                                    valueColor: new AlwaysStoppedAnimation<Color>(
                                      Colors.cyan[400],
                                    ),
                                    value: _progressValue,
                                  ),
                                ),
                                Container(
                                  //container for the orange slider
                                  padding: EdgeInsets.only(top: 20),
                                  width: MediaQuery.of(context).size.width / 1.9,
                                  child: LinearProgressIndicator(
                                    minHeight: 10,
                                    backgroundColor: Colors.grey,
                                    valueColor: new AlwaysStoppedAnimation<Color>(
                                      Colors.orange[400],
                                    ),
                                    value: _progressValue1,
                                  ),
                                ),
                              ],
                            ),
                            new Container(
                              //blue text on the right side of the progress bar
                              padding: EdgeInsets.only(left: 15),
                              child: new Text(
                                'Some\nText',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.cyan[700],
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      new Container(
                        //container for the hexagon
                        padding: EdgeInsets.only(top: 10, left: 8, right: 8),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            hexagonWidget(
                              Colors.cyan,
                              'Text 1',
                              'Text 2',
                              'Text 3',
                              'Assets/piala.png',
                            ),
                            hexagonWidget(
                              Colors.red,
                              'Text 1',
                              'Text 2',
                              'Text 3',
                              'Assets/medal.png',
                            ),
                            hexagonWidget(
                              Colors.green,
                              'Text 1',
                              'Text 2',
                              'Text 3',
                              'Assets/toga.png',
                            ),
                            hexagonWidget(
                              Colors.blue,
                              'Text 1',
                              'Text 2',
                              'Text 3',
                              'Assets/coin.png',
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        height: 1,
                        width: MediaQuery.of(context).size.width,
                        color: Colors.black12, //black12
                      ),
                      SizedBox(height: 15),
                      new Container(
                        padding: EdgeInsets.only(left: 23, right: 23),
                        child: new Column(
                          children: getInkwellsToDisplay(),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:
                  EdgeInsets.only(bottom: 20), //bottom padding to the screen
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      new Text(
                        '  BNI CorpU Live Streaming',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      new InkWell(
                        onTap: _launchURL,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'Assets/mqq.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                      new InkWell(
                        onTap: _launchURL2,
                        child: Container(
                          padding: EdgeInsets.all(4),
                          height: 110,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.all(Radius.circular(5.0)),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'Assets/mqd.png',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _launchURL() async =>
    await canLaunch(_url) ? await launch(_url) : throw 'Could not launch $_url';

void _launchURL2() async => await canLaunch(_url2)
    ? await launch(_url2)
    : throw 'Could not launch $_url2';
