import 'package:flutter/material.dart';

class PoolTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Color.fromRGBO(0, 0, 0, 0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Golden Gate Bridge",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                    fontSize: 20),
              ),
              Text(
                "Golden Gate Bridge, San Francisco, CA",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.5,
                    fontSize: 20),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
