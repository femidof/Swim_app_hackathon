import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/pool_posts.dart';

class FrontPoolPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),

        //pool section title and "show pool memebers" text button
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Section Name",
              style: TextStyle(letterSpacing: 1.0),
            ),
            //this one should be a text button
            GestureDetector(
              onTap: () {
                print("entering chat room section");
                Navigator.of(context).pushNamed("./screens/pool_section_chat_screen.dart");
                // Navigator.push(context, "./screens/pool_section_chat_screen.dart");
              },
              child: Container(
                // color: Colors.blueGrey,
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  children: [
                    // Con,
                    Text(
                      "CHAT",
                      style: TextStyle(letterSpacing: 1.0),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      PoolPosts(),
    ]);
  }
}
