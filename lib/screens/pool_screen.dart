import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';

class PoolScreen extends StatefulWidget {
  @override
  _PoolScreenState createState() => _PoolScreenState();
}

class _PoolScreenState extends State<PoolScreen> {
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

        body: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25.0,
                  // color: Colors.yellow,
                  backgroundColor: Colors.yellow,
                ),
              ],
            ),
            
            
            Expanded(
              child: Container(
                color: Colors.grey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 50,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),


            //here is the bar status
            Container(
              color: Colors.green,
              height: 50,
            ),
            Container(),
            PoolPosts(),
            PoolPosts(),
          ],
        ));
  }
}
