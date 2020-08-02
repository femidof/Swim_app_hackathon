import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/front_pool_posts.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';
import 'package:swim_app_hack/widgets/pool_stats_bar.dart';
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
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/goldengate.jpg"),
                fit: BoxFit.cover,
              ),
            ),
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

          //here is the bar status
          PoolStatsBar(),
          Container(
            height: 2,
            decoration: BoxDecoration(color: Color.fromRGBO(3, 157, 169, 1),),
          ),
          SizedBox(height: 8.0, ),
          Expanded(
            child: Container(
                color: Color.fromRGBO(229, 246, 246, 1),
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return FrontPoolPosts();
                    })),
          ),
        ],
      ),
    );
  }
}
