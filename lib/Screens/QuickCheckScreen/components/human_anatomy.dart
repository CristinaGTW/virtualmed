library human_anatomy;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:virtual_med/components.dart';

class HumanAnatomy extends StatefulWidget {
  final ValueChanged<List> onChanged;

  const HumanAnatomy({Key key, this.onChanged})
      : super(key: key);

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
    return Stack(children: [
      Container(
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(top: 20.0),
          child: humanAnatomyFront()),
      Container(
        alignment: Alignment.centerRight,
        margin: EdgeInsets.only(top: 30.0),
        child: humanAnatomyBack(),
      ),
    ]);
  }

  Widget humanAnatomyFront() {
    return Container(
      width: 250.0,
      height: 655,
      child: SizedBox(
        child: Stack(
          children: <Widget>[
            bodyPart(
                "assets/front/ears.svg", "Ears", 32.0, 0.0, 0.0, 20.0, false),
            bodyPart("assets/front/head.svg", "Head Front", 0.0, 0.0, 0.0, 70.0,
                false),
            bodyPart(
                "assets/front/eyes.svg", "Eyes", 22.0, 0.0, 0.0, 10.0, false),
            bodyPart("assets/front/neck.svg", "Neck Front", 58.0, 0.0, 0.0, 40.0,
                false),
            bodyPart("assets/front/shoulders.svg", "Shoulders", 87.0, 0.0, 0.0,
                92.0, false),
            bodyPart("assets/front/arms.svg", "Arms Front", 150.0, 0.0, 0.0,
                135.0, false),
            bodyPart(
                "assets/front/chest.svg", "Chest", 93.0, 0.0, 0.0, 95.0, false),
            bodyPart("assets/front/hands.svg", "Hands", 280.0, 0.0, 0.0, 82.0,
                false),
            bodyPart("assets/front/torso.svg", "Torso", 173.0, 1.0, 0.0, 140.0,
                false),
            bodyPart("assets/front/pelvis.svg", "Pelvis", 300.0, 0.0, 0.0, 75.0,
                false),
            bodyPart("assets/front/thighs.svg", "Thighs", 327.0, 0.0, 0.0,
                115.0, false),
            bodyPart("assets/front/knees.svg", "Knees", 435.0, 0.0, 0.0, 47.0,
                false),
            bodyPart("assets/front/calves.svg", "Calves", 475.0, 0.0, 0.0,
                125.0, false),
            bodyPart(
                "assets/front/feet.svg", "Feet", 590.0, 0.0, 0.0, 65.0, false),
          ],
        ),
      ),
    );
  }

  Widget humanAnatomyBack() {
    return Container(
      width: 250.0,
      height: 675,
      child: SizedBox(
        child: Stack(
          children: <Widget>[
            bodyPart(
                "assets/back/head.svg", "Head Back", 0.0, 0.0, 0.0, 60.0, true),
            bodyPart(
                "assets/back/neck.svg", "Neck Back", 52.0, 0.0, 0.0, 60.0, true),
            bodyPart("assets/back/shoulders.svg", "Shoulders", 102.0, 0.0, 0.0,
                100.0, true),
            bodyPart("assets/back/elbows.svg", "Elbows", 177.0, 0.0, 0.0, 60.0,
                true),
            bodyPart("assets/back/arms.svg", "Arms Back", 227.0, 0.0, 0.0, 142.0,
                true),
            bodyPart(
                "assets/back/back.svg", "Back", 100.0, 0.0, 0.0, 210.0, true),
            bodyPart("assets/back/glutes.svg", "Glutes", 300.0, 0.0, 0.0, 112.0,
                true),
            bodyPart("assets/back/thighs.svg", "Thighs", 393.0, 0.0, 0.0, 96.0,
                true),
            bodyPart("assets/back/calves.svg", "Calves", 485.0, 0.0, 0.0, 135.0,
                true),
            bodyPart(
                "assets/back/feet.svg", "Feet", 605.0, 0.0, 0.0, 55.0, true),
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
