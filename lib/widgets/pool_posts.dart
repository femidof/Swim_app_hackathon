import 'package:flutter/material.dart';

class PoolPosts extends StatefulWidget {
  @override
  _PoolPostsState createState() => _PoolPostsState();
}

class _PoolPostsState extends State<PoolPosts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Column(
        children: [
          Container(
            height: 160,
            // color: Colors.green,
            child: ListView.builder(
              //spacing to the left
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    print("entering a post");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 110,
                      // height: 10,
                      color: Colors.lightBlueAccent,
                    ),
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
