import 'package:flutter/material.dart';

class ChatSelectionScreen extends StatelessWidget {
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
      ),
    );
  }
}
