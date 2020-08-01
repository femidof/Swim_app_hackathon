import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';

class PoolSectionChat extends StatefulWidget {
  @override
  _PoolSectionChatState createState() => _PoolSectionChatState();
}

//TODO WORK HERE, AND FINISH A BASE CHAT SCREEN FOR THE SECTION
class _PoolSectionChatState extends State<PoolSectionChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Swim",
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        // elevation: 5.0,
      ),

      //favorite contacts for the posts sidescrolling
      // and other users below
      body:  Column(
            children: <Widget>[
              Text("Posts"),
              PoolPosts(),
              // Container(
              //   child: ListView.builder(
              //     //spacing to the left
              //     padding: EdgeInsets.only(left:10.0),
              //     itemCount: 5,
              //     itemBuilder: (BuildContext context, int index) {
              //       return GestureDetector(
              //         onTap: () {print("entering a post");},
              //         child: Container(
              //           width: 120,
              //           height: 120,
              //           color: Colors.lightBlueAccent,
              //         ),
              //       );
              //     },
              //   ),
              // ),
              Container(
                  // child: ListView.builder(),
                  ),
              Container(
                  // child: ListView.builder(),
                  ),

            ],
          // ),
        ),
      
    );
  }
}
