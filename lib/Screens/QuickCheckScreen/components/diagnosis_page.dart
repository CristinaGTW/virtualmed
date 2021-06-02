import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/top-title.dart';
import 'package:virtual_med/components.dart';

import 'diagnosis_body.dart';

class DiagnosisPage extends StatelessWidget {
  final String bodyPartImage;

  const DiagnosisPage({Key key, this.bodyPartImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryBgColor,
      child: Column(
        children: <Widget>[
          TopTitle(
            topMargin: 20.0,
            title: "The possible causes may be:",
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 200,
            height: 200,
            child: Image.asset(bodyPartImage),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: DiagnosisBody(),
          ),
        ],
      ),
    );
  }
}