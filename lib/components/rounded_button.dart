import 'package:flutter/material.dart';

import '../components.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor, borderColor;
  final double width;

  const RoundedButton(
      {Key key,
      this.text,
      this.press,
      this.color = kPrimaryColor,
      this.textColor = Colors.white,
      this.borderColor, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the total width and height of our screen:
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      width: width != null ? width : size.width * 0.6,
      child: TextButton(
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          onPressed: press,
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(textColor),
              backgroundColor: MaterialStateProperty.all<Color>(color),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(
                        color: borderColor != null ? borderColor : color)),
              ))),
    );
  }
}
