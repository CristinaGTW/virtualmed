import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/query_body.dart';
import 'package:virtual_med/components/top-title.dart';
import 'package:virtual_med/components.dart';

class QueryPage extends StatelessWidget {
  final String bodyPart;
  final String bodyPartImage;
  final ValueChanged<int> nextQuestion;
  final int questionIndex;
  final ValueChanged<List> onChanged;
  final ValueChanged<List> onChangedAnswers;

  const QueryPage(
      {Key key,
      @required this.bodyPart,
      this.bodyPartImage,
      this.onChanged,
      this.onChangedAnswers,
      this.nextQuestion, this.questionIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(questionIndex);
    return Container(
      color: kPrimaryBgColor,
      child: Column(
        children: <Widget>[
          TopTitle(
            topMargin: 20.0,
            title: "You selected: " + bodyPart,
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            width: 200,
            height: 200,
            child: Image.asset(bodyPartImage),
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: QueryBody(
              bodyPart: bodyPart,
              onChanged: onChanged,
              onChangedAnswers: onChangedAnswers,
              nextQuestion: nextQuestion,
              questionIndex: questionIndex
            ),
          ),
        ],
      ),
    );
  }
}
