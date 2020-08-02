import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/message_input_container.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';

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
            PoolPosts(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 2.0, vertical: 5.0),
              color: Colors.green,
              child: Text(
                "You have new messages",
                style: TextStyle(letterSpacing: 1.0),
              ),
            ),
              Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
                children:[
                  Container(),
                  MessageInputContainer(),
                ]
              ),
            ),
          ],
          // ),
        ),
      ),
    );
  }
}
