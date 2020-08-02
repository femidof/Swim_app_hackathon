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
      body: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  CircleAvatar(radius: 35),
                  Text(
                    "AMY",
                    style: TextStyle(fontSize: 20, letterSpacing: 0.5),
                  ),
                ],
              ),
            ),
            Container(height: 1, color: Colors.grey,),
            Container(
              padding: EdgeInsets.all(5),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                  ),
                  Container(
                    child: Text(
                      "Group Name",
                      
                      style: TextStyle(fontSize: 20, letterSpacing: 0.5),
                    ),
                  ),
                ],
              ),
            ),
            Container(height: 1, color: Colors.grey,),
          ],
        ),
      ),
    );
  }
}
