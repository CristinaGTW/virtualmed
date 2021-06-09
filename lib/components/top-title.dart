import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTitle extends StatelessWidget {
  final double topMargin;
  final String title;
  final Alignment alignment;

  const TopTitle(
      {Key key,
      this.topMargin = 0,
      this.title,
      this.alignment = Alignment.topCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
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
