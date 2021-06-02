import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/full_page_human_anatomy.dart';
import 'package:virtual_med/components.dart';
import 'package:virtual_med/components/rounded_button.dart';

import 'components/diagnosis_page.dart';
import 'components/query_page.dart';

class QuickCheckTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuickCheckTabState();
}

class _QuickCheckTabState extends State<QuickCheckTab> {
  var _finalBodyPartList = [];
  int _currentIndex = 0;

  void setProgress(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void bodyPartList(List value) {
    _finalBodyPartList = value;
  }

  String getBodyPartImage() {
    var bodyPart = _finalBodyPartList.isNotEmpty
        ? _finalBodyPartList.elementAt(0)
        : "General";

    switch (bodyPart) {
      case "Hands":
        return "assets/images/hand.png";
      default:
        return "assets/images/hand.png";
    }
  }

  Widget getBodySelectionPage() {
    Size size = MediaQuery.of(context).size;
    return Stack(children: [
      Center(
        child: FullPageHumanAnatomy(
          title: "Please select the affected area",
          subtitle:
              "If your general condition is affected, but nothing specifically hurts, just press continue",
          onChanged: bodyPartList,
        ),
      ),
      Positioned(
        left: (size.width - 300) / 2,
        bottom: 10,
        child: RoundedButton(
          width: 300,
          text: "Continue",
          press: () => setProgress(1),
        ),
      ),
    ]);
  }

  Widget getQueryPage() {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Container(
        child: QueryPage(
          bodyPart: _finalBodyPartList.isNotEmpty
              ? _finalBodyPartList.elementAt(0)
              : "General",
          bodyPartImage: getBodyPartImage(),
        ),
      ),
      Container(
        padding: EdgeInsets.only(
            left: (size.width - 300) / 2, right: (size.width - 300) / 2),
        color: kPrimaryLightColor,
        child: Container(
          child: RoundedButton(
            width: 300,
            text: "Finish",
            press: () => setProgress(2),
          ),
        ),
      )
    ]);
  }

  Widget getDiagnosisPage() {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Container(child: DiagnosisPage(bodyPartImage: getBodyPartImage())),
      Container(
        padding: EdgeInsets.only(
            left: (size.width - 300) / 2, right: (size.width - 300) / 2),
        color: kPrimaryLightColor,
        child: Container(
          child: RoundedButton(
            width: 300,
            text: "Further actions",
            press: () => setProgress(3),
          ),
        ),
      )
    ]);
  }

  Widget getFurtherActionsPage() {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryBgColor,
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: size.height / 3 - 25,
                left: (size.width - 400) / 2, right: (size.width - 400) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "View Nearby Medical Centers",
                press: () => setProgress(3),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 50,
                left: (size.width - 400) / 2, right: (size.width - 400) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Contact a Specialist Directly",
                press: () => setProgress(3),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    switch (_currentIndex) {
      case 0:
        return getBodySelectionPage();
      case 1:
        return getQueryPage();
      case 2:
        return getDiagnosisPage();
      case 3:
        return getFurtherActionsPage();
    }
    return Scaffold(
      body: Text("Error"),
    );
  }
}
