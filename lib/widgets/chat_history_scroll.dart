import 'package:flutter/material.dart';
import 'package:swim_app_hack/models/message_model.dart';

import 'build_message.dart';

class ChatHistoryScroll extends StatefulWidget {
  // final List<Message> list_message;
  @override
  _ChatHistoryScrollState createState() => _ChatHistoryScrollState();
}

class _ChatHistoryScrollState extends State<ChatHistoryScroll> {
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
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
    );
  }
}
