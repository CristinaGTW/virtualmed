import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  final double topMargin;
  final String title;

  const TopTitle({Key key, this.topMargin, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(
        top: topMargin,
      ),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 24.0, fontWeight: FontWeight.bold, color: Colors.black),
      ),
    );
  }
}
