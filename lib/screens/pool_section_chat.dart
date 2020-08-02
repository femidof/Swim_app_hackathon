import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';

class PoolSectionChatScreen extends StatefulWidget {
  @override
  _PoolSectionChatScreenState createState() => _PoolSectionChatScreenState();
}

//TODO WORK HERE, AND FINISH A BASE CHAT SCREEN FOR THE SECTION
class _PoolSectionChatScreenState extends State<PoolSectionChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Swim",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // elevation: 5.0,
      ),

      //favorite contacts for the posts sidescrolling
      // and other users below
      body: Column(
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
          Container(),
        ],
        // ),
      ),
    );
  }
}
