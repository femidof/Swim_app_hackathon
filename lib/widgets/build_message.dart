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
              left: 100.0,
            )
          : EdgeInsets.only(
              top: 8.0,
              bottom: 8.0,
              right: 100.0,
            ),
      // padding: EdgeInsets.symmetric(),
      // width: MediaQuery.of(context).size.width * 0.75,
      // decoration: BoxDecoration(),
      child: Container(
        // color: Colors.green,
        child: Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: !isMe
              ? [
                  CircleAvatar(
                    radius: 23.0,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // spacedEve
                      children: [
                        Text(
                          message.time,
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(5, 5),
                                )
                              ],
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          child: Text(message.text),
                          // color: Colors.white,
                          padding: EdgeInsets.all(8),
                        ),
                        Text(message.sender.name),
                      ],
                    ),
                  ),
                ]
              : [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(message.time),
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(-5, 0),
                                )
                              ],
                              color: Color.fromRGBO(68, 191, 189, 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15.0))),
                          child: Text(message.text),
                          // color: Color.fromRGBO(68, 191, 189, 1.0),
                          padding: EdgeInsets.all(8),
                        ),
                        Text(message.sender.name),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 23.0,
                  ),
                ],
        ),
      ),
    );

    return msg;
  }
}
