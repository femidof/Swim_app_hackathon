import 'package:flutter/material.dart';

class OneOnOneChatScreen extends StatefulWidget {
  @override
  OneOnOneChatScreenState createState() => OneOnOneChatScreenState();
}

class OneOnOneChatScreenState extends State<OneOnOneChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customChatBar(),
    );
  }

  AppBar customChatBar() {
    return AppBar(
      backgroundColor: Color(0xff039DA9),
      title: Text("AMY"),
    );
  }
}
