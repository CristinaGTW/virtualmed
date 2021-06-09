import 'package:flutter/material.dart';
import 'package:virtual_med/components/top-title.dart';
import 'package:virtual_med/components.dart';

import 'diagnosis_body.dart';

class DiagnosisPage extends StatelessWidget {
  final String bodyPartImage;
  final List possibleDiagnoses;

  const DiagnosisPage({Key key, this.bodyPartImage, this.possibleDiagnoses})
      : super(key: key);

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
          getDiagnoses(),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: DiagnosisBody(possibleDiagnoses: possibleDiagnoses),
          ),
        ],
      ),
    );
  }

  Widget getDiagnoses() {
    List<Widget> finalDiagnoses = [];
    sortDiagnoses();
    if (possibleDiagnoses != null && possibleDiagnoses.isNotEmpty) {
      var size = possibleDiagnoses.length > 4 ? 4 : possibleDiagnoses.length;
      for (var i = 0; i < size; i++) {
        finalDiagnoses.add(Container(
          alignment: Alignment.topLeft,
          margin: EdgeInsets.only(top: 10, left: 20),
          child: Text(
            possibleDiagnoses[i]["diagnosis"],
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
        ));
      }
    } else {
      finalDiagnoses.add(Container());
    }
    return Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(children: finalDiagnoses));
  }

  void sortDiagnoses() {
    possibleDiagnoses.sort((snd, fst) {
      int fstScore = fst["score"];
      int sndScore = snd["score"];
      return fstScore.compareTo(sndScore);
    });
  }
}
