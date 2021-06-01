library human_anatomy;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/top-title.dart';

import 'human_anatomy.dart';

class FullPageHumanAnatomy extends StatefulWidget {
  final ValueChanged<List> onChanged;
  final String title;
  final String subtitle;

  const FullPageHumanAnatomy(
      {Key key, this.onChanged, this.title, this.subtitle})
      : super(key: key);

  @override
  State<StatefulWidget> createState() =>
      FullPageHumanAnatomyState(title: title, subtitle: subtitle);
}

// ignore: must_be_immutable
class FullPageHumanAnatomyState extends State<FullPageHumanAnatomy> {
  final Map mapData;
  final Widget container;
  final String title;
  final String route;
  final String subtitle;

  FullPageHumanAnatomyState(
      {Key key,
      this.mapData,
      this.container,
      this.title,
      this.route,
      this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFC4C4C4),
        child: Stack(
          children: <Widget>[
            container != null ? container : Container(),
            TopTitle(
              topMargin: 20.0,
              title: title,
            ),
            Container(
              alignment: Alignment.topCenter,
              margin: EdgeInsets.only(top: 50.0),
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 20.0),
              child: HumanAnatomy(
                onChanged: widget.onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
