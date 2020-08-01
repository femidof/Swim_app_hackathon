import 'package:flutter/material.dart';

class PoolPosts extends StatefulWidget {
  @override
  _PoolPostsState createState() => _PoolPostsState();
}

class _PoolPostsState extends State<PoolPosts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text("Top Posts"),
          Container(
            child: ListView.builder(
              //spacing to the left
              padding: EdgeInsets.only(left: 10.0),
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    print("entering a post");
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    color: Colors.lightBlueAccent,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
