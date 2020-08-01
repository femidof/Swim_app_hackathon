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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            
            //pool section title and "show pool memebers" text button
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Section Name", style: TextStyle(letterSpacing: 1.0),),
                //this one should be a text button
                Text("See all pool members", style: TextStyle(letterSpacing: 1.0),),
              ],
            ),
          ),
          Container(
            height: 120,
            color: Colors.green,
            child: ListView.builder(
              //spacing to the left
              padding: EdgeInsets.only(left: 10.0),
              scrollDirection: Axis.horizontal,
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    print("entering a post");
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: 70,
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
