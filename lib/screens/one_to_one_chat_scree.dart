import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/chat_history_scroll.dart';
import 'package:swim_app_hack/widgets/custom_chat_bar.dart';
import 'package:swim_app_hack/widgets/message_input_controller_update.dart';

class OneToOneChatScreen extends StatefulWidget {
  @override
  _OneToOneChatScreenState createState() => _OneToOneChatScreenState();
}

class _OneToOneChatScreenState extends State<OneToOneChatScreen> {
  bool showEmojiPicker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customChatBar(),
        body: Container(
          child: Column(
            children: <Widget>[
              // Flexible(
              //   child: messageList(),
              // ),
              ChatHistoryScroll(),
              MessageInputController(),
              // showEmojiPicker
              //     ? Container(
              //         child: emojiContainer(),
              //       )
              //     : Container(),
            ],
          ),
        ));
  }
}
