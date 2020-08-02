import 'package:flutter/material.dart';

class PoolStatsBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(229, 246, 246, 1),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 20, top: 5.0),
            child: Column(
              children: [
                Text("151"),
                Text(
                  "DIVES",
                  style: TextStyle(letterSpacing: 1.0),
                ),
              ],
            ),
            // color: Colors.orange,
            width: 130,
            height: 50,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(top: 5.0),
            child: Column(
              children: [
                Text("313"),
                Text(
                  "FOLLOWERS",
                  style: TextStyle(
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
            // color: Colors.orange,
            width: 130,
            height: 50,
          ),
          Container(
            padding: EdgeInsets.only(right: 20, top: 5.0),
            alignment: Alignment.centerRight,
            child: Column(
              children: [
                Text("14"),
                Text(
                  "MEMBERS",
                  style: TextStyle(letterSpacing: 1.0),
                ),
              ],
            ),
            // color: Colors.orange,
            width: 130,
            height: 50,
          ), 
        ],
      ),
    );
  }
}
