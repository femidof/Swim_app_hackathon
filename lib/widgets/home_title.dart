
import 'package:flutter/material.dart';

class HomeTitle extends StatelessWidget {
  
  final String nameTitle;
  
  HomeTitle({@required this.nameTitle});

  @override
  Widget build(BuildContext context) {
    return Text(
              nameTitle,
              //why it can't align to right?
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            );
  }
}