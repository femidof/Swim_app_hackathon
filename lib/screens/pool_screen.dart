import 'package:flutter/material.dart';
import 'package:swim_app_hack/colors/aquablue.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';
import 'package:swim_app_hack/widgets/pool_title.dart';

class PoolScreen extends StatefulWidget {
  @override
  _PoolScreenState createState() => _PoolScreenState();
}

class _PoolScreenState extends State<PoolScreen> {
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
          // elevation: 5.0,
        ),
        body: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/goldengate.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                // color: Colors.grey,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          radius: 25.0,
                          backgroundColor: Colors.yellow,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 71.0,
                    ),
                    PoolTitle(),
                  ],
                ),
              ),
            ),

            //here is the bar status
            Container(
              color: Color.fromRGBO(229, 246, 246, 1),
              height: 50,
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
            ),
            Container(
              color: Color.fromRGBO(229, 246, 246, 1),
              child: Column(
                children: [
                  PoolPosts(),
                  PoolPosts(),
                ],
              ),
            ),
          ],
        ));
  }
}
