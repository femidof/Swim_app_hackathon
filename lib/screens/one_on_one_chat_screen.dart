import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/custom_chatbar.dart';

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
}
