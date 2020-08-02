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
        backgroundColor: Colors.green[200],
        centerTitle: true,
        title: Image.asset(
          'assets/images/swim_logo.png',
          fit: BoxFit.contain,
          width: 80,
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
