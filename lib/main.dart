import 'package:flutter/material.dart';
import 'package:swim_app_hack/screens/home_screen.dart';
import 'package:swim_app_hack/screens/one_on_one_chat_screen.dart';
import 'package:swim_app_hack/screens/pool_section_chat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SwimApp Chat',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: OneOnOneChatScreen(),
    );
  }
}
