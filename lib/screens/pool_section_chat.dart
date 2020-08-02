import 'package:flutter/material.dart';
import 'package:swim_app_hack/models/message_model.dart';
import 'package:swim_app_hack/widgets/build_message.dart';
import 'package:swim_app_hack/widgets/message_input_container.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';
import 'package:swim_app_hack/widgets/pool_section_title.dart';

class PoolSectionChatScreen extends StatefulWidget {
  @override
  _PoolSectionChatScreenState createState() => _PoolSectionChatScreenState();
}

//TODO WORK HERE, AND FINISH A BASE CHAT SCREEN FOR THE SECTION
class _PoolSectionChatScreenState extends State<PoolSectionChatScreen> {
  // final bool isRead;
  // PoolSectionChatScreen({this.isRead = b});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(3, 157, 169, 1),
        centerTitle: true,
        title: Image.asset(
          'assets/images/swim_logo.png',
          fit: BoxFit.contain,
          width: 80,
        ),
      ),

      //favorite contacts for the posts sidescrolling
      // and other users below
      body: Container(
        color: Color.fromRGBO(229, 246, 246, 1),
        child: Column(
          children: <Widget>[
                        
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [PoolSectionTitle(), Text("show pool members")],),
            PoolPosts(), 
              Container(
                width: 500,
                margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
                color: Color.fromRGBO(3, 157, 169, 1),
                child: Text(
                  "You have new messages",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    letterSpacing: 0.7,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            Expanded(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.indigo,
                      // child:
                      // GestureDetector(
                      // onTap: () {},
                      child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        itemCount: section_chats.length,
                        itemBuilder: (BuildContext context, int index) {
                          final Message message = section_chats[index];
                          final bool isMe = message.sender.id == currentUser.id;
                          return BuildMessage(message: message, isMe: isMe);
                        },
                        // ),
                      ),
                    ),
                  ),
                  MessageInputContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
