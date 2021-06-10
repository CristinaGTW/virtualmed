import 'package:flutter/material.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Authentication/components/rounded_input_field.dart';
import 'package:virtual_med/Screens/Authentication/login_page.dart';
import 'package:virtual_med/Screens/Authentication/regular_register_page.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/constants.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/full_page_human_anatomy.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/query_body.dart';
import 'package:virtual_med/components/top-title.dart';
import 'package:virtual_med/Services/provider.dart';
import 'package:virtual_med/Services/utils.dart';
import 'package:virtual_med/components.dart';
import 'package:virtual_med/components/rounded_button.dart';
import 'package:provider/provider.dart';
import 'components/diagnosis_page.dart';
import 'components/query_page.dart';

Map<String, String> _data = {
  'full_name': '',
  'phone': '',
  'age': '',
  'height': '',
  'weight': '',
  'chronic_diseases': ''
};

class QuickCheckTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuickCheckTabState();
}

class _QuickCheckTabState extends State<QuickCheckTab> {
  var _finalBodyPartList = [];
  var _possibleDiagnosis = [];
  var _finalAnswers = [];
  int _currentIndex = 0;
  int _questionIndex = 0;
  int _nextQuestion = 0;
  bool isLoggedIn;
  RegularUser regularUser;

  void setNextQuestion(int value) {
    _nextQuestion = value;
  }

  void setProgress(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void bodyPartList(List value) {
    _finalBodyPartList = value;
  }

  void possibleDiagnosis(List value) {
    _possibleDiagnosis = value;
  }

  void finalAnswers(List value) {
    _finalAnswers = value;
  }

  String getBodyPartImage() {
    var bodyPart = _finalBodyPartList.isNotEmpty
        ? _finalBodyPartList.elementAt(0)
        : "General";

    switch (bodyPart) {
      case "Ears":
        return "images/ear.png";
      case "Eyes":
        return "images/eye.png";
      case "Head Front":
        return "images/head.png";
      case "Neck":
        return "images/neck.png";
      case "Chest":
        return "images/chest.png";
      case "Back":
        return "images/back.png";
      case "Hands":
        return "images/hand.png";
      case "Calves":
        return "images/calves.png";
      case "Knees":
        return "images/knee.png";
      case "Thighs":
        return "images/leg.png";
      case "Feet":
        return "images/feet.png";
      default:
        return "images/hand.png";
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
          press: () =>
              getBodyPart() == "Chest" ? setProgress(5) : setProgress(1),
        ),
      ),
    ]);
  }

  Widget getQueryPage(int questionNo) {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Container(
        child: QueryPage(
          bodyPart: getBodyPart(),
          bodyPartImage: getBodyPartImage(),
          onChanged: possibleDiagnosis,
          onChangedAnswers: finalAnswers,
          nextQuestion: setNextQuestion,
          questionIndex: questionNo,
        ),
      ),
      Container(
        padding: EdgeInsets.only(
            left: (size.width - 300) / 2, right: (size.width - 300) / 2),
        color: kPrimaryLightColor,
        child: Container(
          child: RoundedButton(
              width: 300,
              text: "Confirm",
              press: () {
                if (_nextQuestion == -1) {
                  setProgress(2);
                } else {
                  setState(() {
                    _questionIndex = _nextQuestion;
                  });
                }
              }),
        ),
      )
    ]);
  }

  Widget getDiagnosisPage() {
    Size size = MediaQuery.of(context).size;
    return ListView(children: [
      Container(
          child: DiagnosisPage(
        bodyPartImage: getBodyPartImage(),
        possibleDiagnoses: _possibleDiagnosis,
      )),
      Container(
        padding: EdgeInsets.only(
            left: (size.width - 400) / 2, right: (size.width - 400) / 2),
        color: kPrimaryLightColor,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  child: RoundedButton(
                    width: 400,
                    text: "View Nearby Medical Centers",
                    press: () {},
                  ),
                ),
              ),
              Container(
                child: Container(
                  child: RoundedButton(
                    width: 400,
                    text: "Contact a Specialist Directly",
                    press: () {
                      if (isLoggedIn) {
                        sendRequest();
                        setProgress(4);
                      } else {
                        setProgress(3);
                      }
                    },
                  ),
                ),
              )
            ],
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
            padding: EdgeInsets.all(20),
            child: TopTitle(
              topMargin: 50,
              title:
                  "As you are not logged in, you have to provide the following information for the request to be complete:",
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 100,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: RoundedInputField(
              inputText: "Full Name",
              icon: Icons.person,
              onChanged: (value) => _data['full_name'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: RoundedInputField(
              inputText: "Phone",
              icon: Icons.phone,
              onChanged: (value) => _data['phone'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: RoundedInputField(
              inputText: "Age",
              icon: Icons.cake,
              onChanged: (value) => _data['age'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: RoundedInputField(
              inputText: "Height",
              icon: Icons.height,
              onChanged: (value) => _data['age'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: RoundedInputField(
              inputText: "Weight",
              icon: Icons.person,
              onChanged: (value) => _data['weight'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: RoundedInputField(
              inputText: "Chronic Diseases",
              icon: Icons.local_hospital,
              onChanged: (value) => _data['chronic_diseases'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 50,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Submit",
                press: () {
                  sendRequest();
                  setProgress(4);
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getConfirmationPage() {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryBgColor,
      child: Container(
        padding: EdgeInsets.all(20),
        child: TopTitle(
          topMargin: 50,
          title:
              "Your request has been successfully sent. Please wait for someone to pick it up",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    regularUser = context.watch<UserProvider>().regularUser;
    isLoggedIn = regularUser != null;
    switch (_currentIndex) {
      case 0:
        return getBodySelectionPage();
      case 1:
        return getQueryPage(_questionIndex);
      case 2:
        return getDiagnosisPage();
      case 3:
        return getFurtherActionsPage();
      case 4:
        return getConfirmationPage();
      case 5:
        return getChestSelectionPage();
    }
    return Scaffold(
      body: Text("Error"),
    );
  }

  void sendRequest() async {
    var query_answers = composeAnswers();
    print(query_answers);

    var user_id = regularUser != null ? regularUser.userId : -1;
    var specialization = "General"; //TODO get specialization
    var description = "";
    var full_name = regularUser == null
        ? _data['full_name']
        : (regularUser.firstName + " " + regularUser.lastName);
    var phone = regularUser == null ? _data['phone'] : regularUser.phone;
    var age = _data[
        'age']; // var full_name = regularUser == null ? _data['full_name'] : regularUser.age;
    var height = _data[
        'height']; // var height = regularUser == null ? _data['height'] : regularUser.height;
    var weight = _data[
        'weight']; // var weight = regularUser == null ? _data['weight'] : regularUser.weight;
    var chronic_diseases = _data[
        'chronic_diseases']; // var chronic_diseases = regularUser == null ? _data['chronic_diseases'] : regularUser.chronic_diseases;

    try {
      var res = await postToServer(api: 'SendRequest', body: {
        'patient_id': user_id,
        'specialization': specialization,
        'query_answers': query_answers,
        'description': description,
        'full_name': full_name,
        'phone': phone,
        'age': age,
        'height': height,
        'weight': weight,
        'chronic_diseases': chronic_diseases
      });
      if (res['msg'] == 'Success') {
        print("Request sent successfully");
      }
    } catch (e) {
      final snackBar = SnackBar(
        content: Text('$e'),
        backgroundColor: kPrimaryColor,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  String composeAnswers() {
    String result = "";
    for (var answer in _finalAnswers) {
      result += answer["question"] + "\n" + answer["answer"] + "\n\n";
    }
    return result;
  }

  String getBodyPart() {
    return _finalBodyPartList.isNotEmpty
        ? _finalBodyPartList.elementAt(0)
        : "General";
  }

  List<String> getAnswerChoices(query) {
    List<String> answers = List<String>();
    for (var answer in query) {
      answers.add(answer["answer"]);
    }
    return answers;
  }

  Widget getChestSelectionPage() {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryBgColor,
      child: ListView(
        children: <Widget>[
          TopTitle(
            topMargin: 20.0,
            title: "You selected: Chest",
          ),
          Container(
            padding: EdgeInsets.only(
                top:50,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Acute Chest Pain",
                press: () {
                  _finalBodyPartList.removeLast();
                  _finalBodyPartList.add("Acute Chest Pain");
                  setProgress(1);
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 50,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Chronic Chest Pain",
                press: () {
                  _finalBodyPartList.removeLast();
                  _finalBodyPartList.add("Chronic Chest Pain");
                  setProgress(1);
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 50,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Chest Pain in Infants/Children",
                press: () {
                  _finalBodyPartList.removeLast();
                  _finalBodyPartList.add("Chest Pain in Infants/Children");
                  setProgress(1);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
