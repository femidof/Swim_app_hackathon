import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/chat_history_scroll.dart';
import 'package:swim_app_hack/widgets/message_input_controller_update.dart';

class GroupChatScreen extends StatefulWidget {
  @override
  _GroupChatScreenState createState() => _GroupChatScreenState();
}

class _GroupChatScreenState extends State<GroupChatScreen> {
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
        actions: [
          IconButton(
            icon: Image.asset("assets/images/chat_icon.png"),
            onPressed: () {
              Navigator.of(context)
                  .pushNamed("./screens/chat_selection_screen.dart");
            },
          ),
        ],
      ),
      // body: Expanded(
      body: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("GROUP NAME"),
                Text("all group memebers"),
            ],),
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
            ChatHistoryScroll(),
            MessageInputController(),
          ],
        ),
      ),
    );
  }
}
