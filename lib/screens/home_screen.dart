import 'package:flutter/material.dart';
import 'package:swim_app_hack/widgets/home_title.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
        // padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            HomeTitle(nameTitle: "Big Pool"),
            Expanded(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    height: 70,
                    color: Colors.blue,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      3,
                      (index) => Container(
                        height: 70,
                        width: 110,
                        color: Colors.green,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            HomeTitle(nameTitle: "Categories"),
            Expanded(
              child: _categoriesSection,
            ),
            HomeTitle(nameTitle: "Friends"),
            Expanded(
              child: _friendsSection,
            ),
            _bottomSection,
          ],
        ),
      ),
    );
  }

  Widget get _bottomSection => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(
          5,
          (index) => Container(
            height: 40,
            width: 40,
            color: Colors.purple,
          ),
        ),
      );

  Widget get _friendsSection => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          3,
          (index) => Container(
            height: 70,
            width: 110,
            color: Colors.yellow[300],
          ),
        ),
      );

  Widget get _categoriesSection => Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          3,
          (index) => Container(
            height: 70,
            width: 110,
            color: Colors.red,
          ),
        ),
      );
}
