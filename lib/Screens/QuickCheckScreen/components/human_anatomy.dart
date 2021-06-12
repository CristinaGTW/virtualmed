library human_anatomy;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:virtual_med/components.dart';

class HumanAnatomy extends StatefulWidget {
  final ValueChanged<List> onChanged;

  const HumanAnatomy({Key key, this.onChanged}) : super(key: key);

  @override
  _HumanAnatomyState createState() => new _HumanAnatomyState();
}

class _HumanAnatomyState extends State<HumanAnatomy> {
  var _bodyPartList = [];

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _publishSelection(_bodyPartList);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 20.0, right: size.width / 2),
          child: humanAnatomyFront()),
      Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 30.0, left: size.width / 2),
        child: humanAnatomyBack(),
      ),
    ]);
  }

  double normalizeSize(double factor, double size) {
    var normalizeHeight = 675;
    return factor * size / normalizeHeight;
  }

  Widget humanAnatomyFront() {
    Size size = MediaQuery.of(context).size;
    var humanHeight = 3 * size.height / 5;
    var humanWidth = size.height / 5;
    return Container(
      width: humanWidth,
      height: humanHeight,
      child: SizedBox(
        child: Stack(
          children: <Widget>[
            bodyPart(
                "assets/front/ears.svg",
                "Ears",
                normalizeSize(32.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(20.0, humanHeight),
                false),
            bodyPart("assets/front/head.svg", "Head Front", 0.0, 0.0, 0.0,
                normalizeSize(70.0, humanHeight), false),
            bodyPart(
                "assets/front/eyes.svg",
                "Eyes",
                normalizeSize(22.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(10.0, humanHeight),
                false),
            bodyPart(
                "assets/front/neck.svg",
                "Neck",
                normalizeSize(58.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(40.0, humanHeight),
                false),
            bodyPart(
                "assets/front/shoulders.svg",
                "Shoulders",
                normalizeSize(87.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(92.0, humanHeight),
                false),
            bodyPart(
                "assets/front/arms.svg",
                "Arms",
                normalizeSize(150.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(135.0, humanHeight),
                false),
            bodyPart(
                "assets/front/chest.svg",
                "Chest",
                normalizeSize(93.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(95.0, humanHeight),
                false),
            bodyPart(
                "assets/front/hands.svg",
                "Hands",
                normalizeSize(280.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(82.0, humanHeight),
                false),
            bodyPart(
                "assets/front/torso.svg",
                "Torso",
                normalizeSize(173.0, humanHeight),
                normalizeSize(1.0, humanHeight),
                0.0,
                normalizeSize(140.0, humanHeight),
                false),
            bodyPart(
                "assets/front/pelvis.svg",
                "Pelvis",
                normalizeSize(300.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(75.0, humanHeight),
                false),
            bodyPart(
                "assets/front/thighs.svg",
                "Thighs",
                normalizeSize(327.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(115.0, humanHeight),
                false),
            bodyPart(
                "assets/front/knees.svg",
                "Knees",
                normalizeSize(435.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(47.0, humanHeight),
                false),
            bodyPart(
                "assets/front/calves.svg",
                "Calves",
                normalizeSize(476.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(125.0, humanHeight),
                false),
            bodyPart(
                "assets/front/feet.svg",
                "Feet",
                normalizeSize(595.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(65.0, humanHeight),
                false),
          ],
        ),
      ),
    );
  }

  Widget humanAnatomyBack() {
    Size size = MediaQuery.of(context).size;
    var humanHeight = 3 * size.height / 5;
    var humanWidth = size.height / 5;
    return Container(
      width: humanWidth,
      height: humanHeight,
      child: SizedBox(
        child: Stack(
          children: <Widget>[
            bodyPart("assets/back/head.svg", "Head Back", 0.0, 0.0, 0.0,
                normalizeSize(60.0, humanHeight), true),
            bodyPart(
                "assets/back/neck.svg",
                "Neck",
                normalizeSize(52.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(60.0, humanHeight),
                true),
            bodyPart(
                "assets/back/shoulders.svg",
                "Shoulders",
                normalizeSize(102.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(100.0, humanHeight),
                true),
            bodyPart(
                "assets/back/elbows.svg",
                "Elbows",
                normalizeSize(177.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(60.0, humanHeight),
                true),
            bodyPart(
                "assets/back/arms.svg",
                "Arms",
                normalizeSize(227.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(142.0, humanHeight),
                true),
            bodyPart(
                "assets/back/back.svg",
                "Back",
                normalizeSize(100.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(210.0, humanHeight),
                true),
            bodyPart(
                "assets/back/glutes.svg",
                "Glutes",
                normalizeSize(300.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(112.0, humanHeight),
                true),
            bodyPart(
                "assets/back/thighs.svg",
                "Thighs",
                normalizeSize(393.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(96.0, humanHeight),
                true),
            bodyPart(
                "assets/back/calves.svg",
                "Calves",
                normalizeSize(485.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(130.0, humanHeight),
                true),
            bodyPart(
                "assets/back/feet.svg",
                "Feet",
                normalizeSize(605.0, humanHeight),
                0.0,
                0.0,
                normalizeSize(55.0, humanHeight),
                true),
          ],
        ),
      ),
    );
  }

  Widget bodyPart(String svgPath, String svgName, double marginTop,
      double marginRight, double marginLeft, double height, bool isBack) {
    Color _svgColor = _bodyPartList.contains(svgName)
        ? kPrimaryColor
        : _getBodyPartColor(svgName, isBack);

    final Widget bodyPartSvg = new SvgPicture.asset(svgPath,
        semanticsLabel: svgName, color: _svgColor);

    return Container(
      margin:
          EdgeInsets.only(top: marginTop, right: marginRight, left: marginLeft),
      height: height,
      alignment: Alignment.topCenter,
      child: GestureDetector(
          onTap: () {
            setState(() {
              if (_bodyPartList.contains(svgName)) {
                _bodyPartList.remove(svgName);
              } else {
                if (_bodyPartList.length > 0) {
                  _bodyPartList.removeLast();
                }
                _bodyPartList.add(svgName);
              }
            });
          },
          child: bodyPartSvg),
    );
  }

  void _publishSelection(List _bodyPartList) {
    if (widget.onChanged != null) {
      widget.onChanged(_bodyPartList);
    }
  }

  Color _getBodyPartColor(String svgName, bool isBack) {
    if (svgName.contains("Eyes")) {
      return kPrimaryBgColor;
    }
    return Colors.white;
  }
}
