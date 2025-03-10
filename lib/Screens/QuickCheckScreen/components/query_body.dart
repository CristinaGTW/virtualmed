import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_med/components/top-title.dart';

import '../../../components.dart';
import 'constants.dart';

class QueryBody extends StatefulWidget {
  final String bodyPart;
  final ValueChanged<List> onChanged;
  final ValueChanged<List> onChangedAnswers;
  final ValueChanged<int> nextQuestion;
  final int questionIndex;

  const QueryBody(
      {Key key,
      @required this.bodyPart,
      this.onChanged,
      this.onChangedAnswers,
      this.nextQuestion,
      this.questionIndex})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _QueryBodyState(bodyPart);
}

class _QueryBodyState extends State<QueryBody> {
  final String bodyPart;
  var _nextQuestion = 0;

  List<int> _groupValues = [];
  List<bool> _answeredBefore = [];
  List finalDiagnosesList = [];
  List finalAnswers = [];

  _QueryBodyState(this.bodyPart);

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _publishDiagnosis(finalDiagnosesList);
      _publishAnswers(finalAnswers);
      _publishNextQuestion(_nextQuestion);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (widget.questionIndex == 0) {
      if (Constants.query[bodyPart] != null) {
        for (var i = 0; i < Constants.query[bodyPart].length; i++) {
          _groupValues.add(-1);
        }
      }
    }
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
            child: currentQuestion(),
          ),
        ],
      ),
    );
  }

  Widget currentQuestion() {
    _groupValues.add(-1);
    List<String> answerChoices = getAnswerChoices(
        Constants.query[bodyPart][widget.questionIndex]["answerChoices"]);
    return Container(
      alignment: Alignment.topLeft,
      margin: EdgeInsets.only(left: 20),
      child: Column(
        children: <Widget>[Text(
            Constants.query[bodyPart][widget.questionIndex]["question"],
            style: TextStyle(fontSize: 20),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: getAnswer(
                Constants.query[bodyPart][widget.questionIndex]["answerType"],
                answerChoices,
                widget.questionIndex),
          ),
        ],
      ),
    );
  }

  List<Widget> getQuestions() {
    List<Widget> finalQuestions = [];
    if (Constants.query[bodyPart] != null) {
      for (var i = 0; i < Constants.query[bodyPart].length; i++) {
        _groupValues.add(-1);
        List<String> answerChoices =
            getAnswerChoices(Constants.query[bodyPart][i]["answerChoices"]);
        finalQuestions.add(Stack(
          children: [
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 30, left: 20),
              child: Stack(
                children: <Widget>[
                  Text(
                    Constants.query[bodyPart][i]["question"],
                    style: TextStyle(fontSize: 20),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 80),
                    child: getAnswer(Constants.query[bodyPart][i]["answerType"],
                        answerChoices, i),
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
    List<Widget> displayChoices = [];
    for (int i = 0; i < choices.length; i++) {
      displayChoices.add(
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 30,
          width: 200,
          child: ListTile(
            title: Text(
              choices[i],
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            leading: Transform.scale(
              scale: 2.0,
              child: Radio(
                value: i,
                groupValue: _groupValues[questionNo],
                activeColor: kPrimaryColor,
                onChanged: i == choices.length
                    ? null
                    : (int value) {
                        setState(() {
                          var diagnosisList = Constants.query[bodyPart]
                              [questionNo]["onYesResponse"];

                          diagnosisList.forEach((diagnosis) {
                            var index =
                                (diagnosisList as List).lastIndexOf(diagnosis);
                            var diagnosisLabel = Constants.query[bodyPart]
                                    [questionNo]["onYesResponse"][index]
                                ["diagnosis"];

                            if (choices[i].contains("Yes")) {
                              updateAnswer(
                                  Constants.query[bodyPart][questionNo]
                                      ["question"],
                                  "Yes");
                              if (getDiagnoses(diagnosisLabel) == null) {
                                finalDiagnosesList.add(diagnosis);
                              } else {
                                changeScore(diagnosis, questionNo,
                                    diagnosis["score"], index);
                              }
                              _nextQuestion = Constants.query[bodyPart]
                                      [widget.questionIndex]["answerChoices"][1]
                                  ["nextQuestion"];
                              _publishNextQuestion(_nextQuestion);
                            }

                            if (choices[i].contains("No")) {
                              updateAnswer(
                                  Constants.query[bodyPart][questionNo]
                                      ["question"],
                                  "No");
                              if (_answeredBefore.length > questionNo &&
                                  _answeredBefore[questionNo] == true &&
                                  getDiagnoses(diagnosisLabel) != null) {
                                changeScore(diagnosis, questionNo,
                                    -diagnosis["score"], index);
                              }
                              _nextQuestion = Constants.query[bodyPart]
                                      [widget.questionIndex]["answerChoices"][0]
                                  ["nextQuestion"];
                              _publishNextQuestion(_nextQuestion);
                            }
                          });
                          _groupValues[questionNo] = value;
                          // print(diagnosesList);
                          if (_answeredBefore.length >= questionNo) {
                            _answeredBefore.add(false);
                            _answeredBefore[questionNo] = true;
                          }
                        });
                      },
              ),
            ),
          ),
        ),
      );
    }
    return displayChoices;
  }

  void changeScore(Object diagnosis, int questionNo, int score, int index) {
    var diagnosisLabel = Constants.query[bodyPart][questionNo]["onYesResponse"]
        [index]["diagnosis"];
    var previousDiagnosis = getDiagnoses(diagnosisLabel);
    var previousScore = previousDiagnosis["score"];
    if (previousScore + score > 0) {
      finalDiagnosesList
          .add({"diagnosis": diagnosisLabel, "score": previousScore + score});
    }
    finalDiagnosesList.remove(previousDiagnosis);
  }

  void _publishDiagnosis(List _possibleDiagnosis) {
    if (widget.onChanged != null) {
      widget.onChanged(_possibleDiagnosis);
    }
  }

  void _publishAnswers(List _answers) {
    if (widget.onChangedAnswers != null) {
      widget.onChangedAnswers(_answers);
    }
  }

  void _publishNextQuestion(int _question) {
    widget.nextQuestion(_question);
  }

  getDiagnoses(String diagnosisLabel) {
    for (var diagnosis in finalDiagnosesList) {
      if (diagnosis["diagnosis"] == diagnosisLabel) {
        return diagnosis;
      }
    }
    return null;
  }

  void updateAnswer(String question, String newAnswer) {
    // for (var answer in finalAnswers) {
    //   if (answer['question'] == question) {
    //     finalAnswers.remove(answer);
    //   }
    // }
    finalAnswers.add({"question": question, "answer": newAnswer});
  }

  List<String> getAnswerChoices(query) {
    List<String> answers = List<String>();
    for (var answer in query) {
      answers.add(answer["answer"]);
    }
    return answers;
  }
}

enum AnswerType { INTENSITY, MULTIPLE_CHOICE, TEXT_BOX }
