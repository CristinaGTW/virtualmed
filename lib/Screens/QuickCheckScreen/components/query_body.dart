import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/top-title.dart';

import '../../../components.dart';

class QueryBody extends StatefulWidget {
  final String bodyPart;

  const QueryBody({Key key, @required this.bodyPart}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _QueryBodyState(bodyPart);
}

class _QueryBodyState extends State<QueryBody> {
  static const query = {
    "Hands": [
      {
        "question": "How bad does it hurt when ...?",
        "answerType": AnswerType.INTENSITY
      },
      {
        "question": "Are you experiencing ...?",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["Yes", "No", "Sometimes"]
      },
      {
        "question": "Multiple choice test",
        "answerType": AnswerType.MULTIPLE_CHOICE,
        "answerChoices": ["choice 1", "choice 2", "choice 3", "choice 4"]
      },
      {"question": "Describe what happened", "answerType": AnswerType.TEXT_BOX}
    ]
  };

  final String bodyPart;

  List<int> _groupValues = [];

  _QueryBodyState(this.bodyPart);

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
            title: "Please answer the following",
          ),
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Column(
              children: getQuestions(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getQuestions() {
    List<Widget> finalQuestions = List<Widget>();
    if (query[bodyPart] != null) {
      for (var i = 0; i < query[bodyPart].length; i++) {
        _groupValues.add(-1);
        finalQuestions.add(Stack(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Stack(
                children: <Widget>[
                  Text(
                    (i + 1).toString() + ". " + query[bodyPart][i]["question"],
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    child: getAnswer(query[bodyPart][i]["answerType"],
                        query[bodyPart][i]["answerChoices"], i),
                  ),
                ],
              ),
            ),
          ],
        ));
      }
    }
    return finalQuestions;
  }

  Widget getAnswer(AnswerType type, List<String> choices, int questionNo) {
    switch (type) {
      case AnswerType.INTENSITY:
        return Container();
      case AnswerType.MULTIPLE_CHOICE:
        return Container(
          child: Column(
            children: getChoices(choices, questionNo),
          ),
        );
      case AnswerType.TEXT_BOX:
        return Container(
          padding: EdgeInsets.all(20),
          child: TextField(
            cursorColor: Colors.black,
            maxLines: null,
            keyboardType: TextInputType.multiline,
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                hintText: 'Type your answer here'),
          ),
        );
    }
    return Container();
  }

  List<Widget> getChoices(List<String> choices, int questionNo) {
    List<Widget> displayChoices = List<Widget>();
    for (int i = 0; i < choices.length; i++) {
      displayChoices.add(
        Container(
          height: 30,
          width: 200,
          child: ListTile(
            title: Text(
              choices[i],
            ),
            leading: Radio(
              value: i,
              groupValue: _groupValues[questionNo],
              activeColor: kPrimaryColor,
              onChanged: i == choices.length
                  ? null
                  : (int value) {
                      setState(() {
                        // groupValue = value;
                        _groupValues[questionNo] = value;
                      });
                    },
            ),
          ),
        ),
      );
    }
    return displayChoices;
  }
}

enum AnswerType { INTENSITY, MULTIPLE_CHOICE, TEXT_BOX }
