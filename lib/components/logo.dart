import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Logo extends StatelessWidget {
  final Color iconColor;

  const Logo({Key key, this.iconColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/cross.svg",
            height: 115,
            width: 115,
            color: iconColor,
          ),
          Image.asset(
            "assets/images/LogoWhite.png",
            width: size.width * 0.8,
          ),
        ],
      ),
    );
  }
}