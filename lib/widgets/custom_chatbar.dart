import 'package:flutter/material.dart';

AppBar customChatBar() {
  return AppBar(
    actions: <Widget>[
      IconButton(icon: Icon(Icons.video_call), onPressed: () {}),
      IconButton(icon: Icon(Icons.phone_in_talk), onPressed: () {}),
    ],
    elevation: 0.0,
    backgroundColor: Color(0xff039DA9),
    title: Center(
        child: Padding(
      padding: const EdgeInsets.only(
        left: 52,
      ),
      child: Text(
        "AMY",
        style: TextStyle(fontWeight: FontWeight.w400),
      ),
    )),
  );
}
