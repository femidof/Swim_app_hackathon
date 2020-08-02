import 'package:flutter/material.dart';
import 'package:swim_app_hack/models/message_model.dart';

class BuildMessage extends StatelessWidget {
  final bool isMe;
  final Message message;

  BuildMessage({this.message, this.isMe});

  @override
  Widget build(BuildContext context) {
    final Container msg = Container(
      margin: isMe
          ? EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              left: 80.0,
            ),
      padding: EdgeInsets.symmetric(),
      // width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(),
      child: Column(
        crossAxisAlignment:
            isMe ? CrossAxisAlignment.start : CrossAxisAlignment.end,
        children: [
          Text(message.text),
        ],
      ),
    );

    return msg;
  }
}
