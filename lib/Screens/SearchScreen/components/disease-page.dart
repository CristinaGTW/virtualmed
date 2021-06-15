import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/diagnosis_body.dart';
import 'package:virtual_med/components/top-title.dart';

import '../../../components.dart';

class DiseasePage extends StatelessWidget {
  final String disease;

  const DiseasePage({Key key, this.disease}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryLightColor,
      child: ListView(
        children: <Widget>[
          Container(
            color: kPrimaryBgColor,
            padding: EdgeInsets.only(bottom: 50),
            child: TopTitle(
              topMargin: 50.0,
              title: disease,
            ),
          ),
          Container(
            color: kPrimaryBgColor,
            child: DiagnosisBody(possibleDiagnoses: [
              {'diagnosis': disease}
            ]),
          )
        ],
      ),
    );
  }
}
