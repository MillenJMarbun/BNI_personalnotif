import 'package:flutter/material.dart';
import 'package:slide_countdown_clock/slide_countdown_clock.dart';

import 'choice.dart';


class deepQuestions extends StatefulWidget {

  const deepQuestions({Key key, this.image}) : super(key: key);
  final String image;

  @override
  _deepQuestionsState createState() => _deepQuestionsState();
}

class _deepQuestionsState extends State<deepQuestions> {
  List<User> users;
  User selectedUser;
  int _groupValue = -1;

  @override
  void initState() {
    super.initState();
    users = User.getUsers();
  }

  setSelectedUser(User user) {
    setState(() {
      selectedUser = user;
    });
  }

  List<Widget> createRadioListUsers() {
    List<Widget> widgets = [];
    for (User user in users) {
      widgets.add(
        RadioListTile(
          value: user,
          groupValue: selectedUser,
          title: Text(user.choice),
          onChanged: (currentUser) {
            print("Current User ${currentUser.choice}");
            setSelectedUser(currentUser);
          },
          selected: selectedUser == user,
          activeColor: Colors.deepOrange,
        ),
      );
    }
    return widgets;
  }



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
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 20, right: 30),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          border: Border.all(color: Colors.deepOrange),
                          borderRadius: BorderRadius.circular(20)),
                      width: MediaQuery.of(context).size.width / 1.8,
                      height: 60,
                      child: Center(
                        child: SlideCountdownClock(
                          duration: Duration(minutes: 5),
                          slideDirection: SlideDirection.Down,
                          separator: ":",
                          textStyle: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          onDone: () {
                            /*_scaffoldKey.currentState.showSnackBar(SnackBar(content: Text('Clock 1 finished')));*/
                          },
                        ),
                      ))),
              SizedBox(
                width: 105,
                height: 60, // <-- match_parent
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal,
                    ),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                            Center(
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
                                        onPressed: () => Navigator.pop(context),
                                      ),
                                      Text(
                                        'Deep 46 Materi',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.teal,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )
                                    ],
                                  ),
                                  Image.network(widget.image),
                                ],
                              ),
                            ),
                          ]
                          );
                        },
                      );
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        SizedBox(width: 5),
                        Text('Lihat\nMateri'),
                      ],
                    )),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            color: Colors.white,
            height: 600,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Text(
                    '1. Berikut Adalah Bentuk untuk melakukan Kerjasama antar bank untuk memaksimalkan keuntungan',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Column(
                  children:
                    createRadioListUsers(),
                ),

                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width /
                      1.1, // <-- match_parent
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepOrange,
                    ),
                    onPressed: () {},
                    child: const Text('Submit'),
                  ),
                ),
              ],
            ),
          )
        ],
        /*Text('Deep46 Questions Page'),*/
      ),
    );
  }
}



