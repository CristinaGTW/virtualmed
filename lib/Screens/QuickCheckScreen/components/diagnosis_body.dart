import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/top-title.dart';

import '../../../components.dart';

class DiagnosisBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50),
      decoration: BoxDecoration(
        color: kPrimaryLightColor,
        border: Border.all(
          color: kPrimaryLightColor,
        ),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
      ),
      child: Column(
        children: [
          TopTitle(
            topMargin: 20.0,
            title: "Recommendations",
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: [],
            ),
          ),
        ],
      ),
    );
  }
}