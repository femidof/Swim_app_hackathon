import 'package:flutter/material.dart';
import 'package:swim_app_hack/screens/chat_selection_screen.dart';
import 'package:swim_app_hack/screens/group_chat_screen.dart';
import 'file:///C:/Users/marod%20bits/Documents/Android%20Dev/swim_app_hack/trash/home_screen.dart';
import 'package:swim_app_hack/screens/pool_screen.dart';
import 'package:swim_app_hack/screens/pool_section_chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // primarySwatch: aquaBlue[50],
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes:{
        "./screens/chat_selection_screen.dart": (context) =>ChatSelectionScreen(),
        "./screens/pool_section_chat_screen.dart": (context) => PoolSectionChatScreen(), 
      },
      home: GroupChatScreen(),
    );
  }
}
