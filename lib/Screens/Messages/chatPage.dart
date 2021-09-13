import 'package:flutter/material.dart';

import 'chatUsersModel.dart';
import 'conversationList.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}
//"Assets/flutterlogo.png",
class _ChatPageState extends State<ChatPage> {

  List<ChatUsers> chatUsers = [
    ChatUsers(name: "Elon Musk", messageText: "Tesla Is doing Great", imageURL:  "https://asset.kompas.com/crops/co6eI6cSLhVPTJDB5Ctd5b-9lv4=/0x0:0x0/750x500/data/photo/2021/01/28/60122e4d2fab4.jpg", time: "Now"),
    ChatUsers(name: "Jeff Bezos", messageText: "Amazon is doing fine", imageURL: "https://images.bisnis-cdn.com/posts/2020/11/06/1314411/jeff-bezos.jpg", time: "Yesterday"),
    ChatUsers(name: "Mark Zuckerberg", messageText: "FaceBook is doing Great", imageURL: "https://img.okezone.com/content/2020/01/13/320/2152302/ketika-mark-zuckerberg-ngeluh-jadi-bos-facebook-GmBbUyRsiC.jpg", time: "31 Mar"),
    ChatUsers(name: "Alice Walton", messageText: "Is there any thing wrong?", imageURL: "https://i1.sndcdn.com/artworks-ry51snM1KWIEcBZE-BPcGTw-t500x500.jpg", time: "28 Mar"),
    ChatUsers(name: "Michael Bloomberg", messageText: "Is there any thing wrong?", imageURL: "https://upload.wikimedia.org/wikipedia/commons/e/e2/Mike_Bloomberg_Headshot.jpg", time: "23 Mar"),
    ChatUsers(name: "Charles Koch", messageText: "How are you", imageURL: "https://upload.wikimedia.org/wikipedia/commons/2/20/Charles_Koch_portrait_%28cropped%29.jpg", time: "17 Mar"),
    ChatUsers(name: "Jack Ma", messageText: "Great talking to you!", imageURL: "https://www.ecommercestrategychina.com/storage/uploads/images/webwxgetmsgimg.jpg", time: "24 Feb"),
    ChatUsers(name: "Evan Spiegel", messageText: "Great stuff", imageURL: "https://static.theceomagazine.net/wp-content/uploads/2020/06/12080821/spiegel.jpg", time: "18 Feb"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Messages",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepOrangeAccent,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.white,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold, color: Colors.white),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: TextStyle(color: Colors.grey.shade600),
                  prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Colors.grey.shade100
                      )
                  ),
                ),
              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageUrl: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 7)?true:false,
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
