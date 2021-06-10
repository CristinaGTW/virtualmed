import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/diagnosis-overview.dart';
import 'package:virtual_med/components/top-title.dart';

import '../../../components.dart';

class DiagnosisBody extends StatelessWidget {
  final List possibleDiagnoses;

  const DiagnosisBody({Key key, this.possibleDiagnoses}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 50, left: 20, right: 20),
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
            title: "Overview",
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            padding: EdgeInsets.all(20),
            child: getOverview()
          ),
          TopTitle(
            topMargin: 20.0,
            title: "Recommendations",
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                TopTitle(
                  alignment: Alignment.topLeft,
                  topMargin: 20.0,
                  title: "Try",
                ),
                Column(
                  children: getTry(),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                TopTitle(
                  alignment: Alignment.topLeft,
                  topMargin: 20.0,
                  title: "Avoid",
                ),
                Column(
                  children: getAvoid(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getTry() {
    List tryFinal = List<Widget>();

    var tryList =
        DiagnosisOverview.diagnoses[possibleDiagnoses[0]['diagnosis']]['try'];

    for (var tryElem in tryList) {
      tryFinal.add(
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              tryElem,
              style: TextStyle(
                  fontSize: 20,),
            ),
          )
      );
    }
    return tryFinal;
  }

  List<Widget> getAvoid() {
    List avoidFinal = List<Widget>();

    var avoidList =
    DiagnosisOverview.diagnoses[possibleDiagnoses[0]['diagnosis']]['avoid'];

    for (var avoidElem in avoidList) {
      avoidFinal.add(
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(top: 10, left: 20),
            child: Text(
              avoidElem,
              style: TextStyle(
                fontSize: 20,),
            ),
          )
      );
    }

    return avoidFinal;
  }

  Widget getOverview() {
    return (DiagnosisOverview.diagnoses[possibleDiagnoses[0]["diagnosis"]] != null) ? Text(DiagnosisOverview.diagnoses[possibleDiagnoses[0]['diagnosis']]
    ['overview'], style: TextStyle(fontSize: 20)) : Container() ;
  }
}
