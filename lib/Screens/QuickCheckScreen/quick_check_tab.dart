import 'package:flutter/material.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Authentication/login_page.dart';
import 'package:virtual_med/Screens/Authentication/regular_register_page.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/full_page_human_anatomy.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/top-title.dart';
import 'package:virtual_med/Services/provider.dart';
import 'package:virtual_med/Services/utils.dart';
import 'package:virtual_med/components.dart';
import 'package:virtual_med/components/rounded_button.dart';
import 'package:provider/provider.dart';
import 'components/diagnosis_page.dart';
import 'components/query_page.dart';

class QuickCheckTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _QuickCheckTabState();
}

class _QuickCheckTabState extends State<QuickCheckTab> {
  var _finalBodyPartList = [];
  var _possibleDiagnosis = [];
  var _finalAnswers = [];
  int _currentIndex = 0;
  bool isLoggedIn;
  RegularUser regularUser;

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
          onChanged: possibleDiagnosis,
          onChangedAnswers: finalAnswers,
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
                  "You have to be logged in to submit a direct request. Please login or create an account if you do not have one",
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: size.height / 5,
                left: (size.width - 400) / 2,
                right: (size.width - 400) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Login",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  }));
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
                text: "Register",
                press: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegularRegisterPage();
                  }));
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
        return getQueryPage();
      case 2:
        return getDiagnosisPage();
      case 3:
        return getFurtherActionsPage();
      case 4:
        return getConfirmationPage();
    }
    return Scaffold(
      body: Text("Error"),
    );
  }

  void sendRequest() async {
    var query_answers = composeAnswers();
    print(query_answers);

    var user_id = regularUser.userId;
    //TODO get specialization
    var specialization = "General";
    var description = "";
    try {
      var res = await postToServer(api: 'SendRequest', body: {
        'patient_id': user_id,
        'specialization': specialization,
        'query_answers': query_answers,
        'description': description
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
}
