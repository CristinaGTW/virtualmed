import 'package:flutter/material.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Authentication/components/rounded_input_field.dart';
import 'package:virtual_med/Screens/ChatScreens/chat_list.dart';
import 'package:virtual_med/Screens/QuickCheckScreen/components/full_page_human_anatomy.dart';
import 'package:virtual_med/Screens/main_nav.dart';
import 'package:virtual_med/components/top-title.dart';
import 'package:virtual_med/Services/user-provider.dart';
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
        return "assets/images/body_parts/ear.png";
      case "Eyes":
        return "assets/images/body_parts/eye.png";
      case "Head Front":
        return "assets/images/body_parts/head_front.png";
      case "Neck":
        return "assets/images/body_parts/neck.png";
      case "Acute Chest Pain":
      case "Chronic Chest Pain":
      case "Chest Pain in Infants/Children":
        return "assets/images/body_parts/chest.png";
      case "Shoulders":
        return "assets/images/body_parts/shoulders.png";
      case "Arms":
        return "assets/images/body_parts/arms.png";
      case "Hands":
        return "assets/images/body_parts/hand.png";
      case "Torso":
        return "assets/images/body_parts/torso.png";
      case "Pelvis":
        return "assets/images/body_parts/pelvis.png";
      case "Thighs":
        return "assets/images/body_parts/thigh.png";
      case "Knees":
        return "assets/images/body_parts/knee.png";
      case "Calves":
        return "assets/images/body_parts/calves.png";
      case "Feet":
        return "assets/images/body_parts/feet.png";
      case "Head Back":
        return "assets/images/body_parts/head_back.png";
      case "Elbows":
        return "assets/images/body_parts/elbows.png";
      case "Back":
        return "assets/images/body_parts/back.png";
      case "Glutes":
        return "assets/images/body_parts/glutes.png";
      case "General":
      case "Cough":
      case "Cold and Flu":
      case "Headaches":
        return "assets/images/body_parts/general.png";
      default:
        return "";
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
        left: (size.width * 0.2) / 2,
        bottom: 10,
        child: RoundedButton(
            width: size.width * 0.8,
            text: "Continue",
            press: () {
              if (getBodyPart() == "Chest") {
                setProgress(5);
              } else if (getBodyPart() == "General") {
                setProgress(6);
              } else {
                setProgress(1);
              }
            }),
      ),
    ]);
  }

  Widget getQueryPage(int questionNo) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryLightColor,
      child: ListView(children: [
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
              left: (size.width * 0.2) / 2, right: (size.width * 0.2) / 2),
          color: kPrimaryLightColor,
          child: Container(
            child: RoundedButton(
                width: size.width * 0.8,
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
      ]),
    );
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
            left: (size.width * 0.2) / 2, right: (size.width * 0.2) / 2),
        color: kPrimaryLightColor,
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  child: RoundedButton(
                    width: 400,
                    text: "View Nearby Medical Centers",
                    press: () {
                      if (isLoggedIn) {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainNavAuth(
                            currentIndex: 2,
                          );
                        }));
                      } else {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainNavUnauth(
                            currentIndex: 2,
                          );
                        }));
                      }
                    },
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
              ),
              isLoggedIn
                  ? Container(
                      child: Container(
                        child: RoundedButton(
                          width: 400,
                          text: "Join The Community",
                          press: () {
                            showModalBottomSheet<void>(
                              context: context,
                              builder: (BuildContext context) {
                                return Container(
                                  height: 300,
                                  color: kPrimaryColor,
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        TopTitle(
                                          title: "Disclaimer",
                                          color: Colors.white,
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(30),
                                          child: Text(
                                              "By joining the community, you agree to share personal medical information (i.e. the questionnaire responses you just completed and the provided diagnoses)." +
                                                  " If you would not like to continue, press anywhere else on the screen.", style: TextStyle(color: Colors.white, fontSize: 14),),
                                        ),
                                        RoundedButton(
                                          text: 'Accept and Join',
                                          color: Colors.white,
                                          textColor: kPrimaryColor,
                                          press: () {
                                            joinCommunity();
                                            Navigator.push(context,
                                                MaterialPageRoute(
                                                    builder: (context) {
                                              return ChatList();
                                            }));
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    )
                  : Container(),
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
        padding:
            EdgeInsets.only(left: size.width * 0.1, right: size.width * 0.1),
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
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: RoundedInputField(
              inputText: "Full Name",
              icon: Icons.person,
              onChanged: (value) => _data['full_name'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: RoundedInputField(
              inputText: "Phone",
              icon: Icons.phone,
              onChanged: (value) => _data['phone'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: RoundedInputField(
              inputText: "Age",
              icon: Icons.cake,
              onChanged: (value) => _data['age'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: RoundedInputField(
              inputText: "Height",
              icon: Icons.height,
              onChanged: (value) => _data['height'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: RoundedInputField(
              inputText: "Weight",
              icon: Icons.person,
              onChanged: (value) => _data['weight'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 10,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: RoundedInputField(
              inputText: "Chronic Diseases",
              icon: Icons.local_hospital,
              onChanged: (value) => _data['chronic_diseases'] = value,
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 50,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
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
                top: 50,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
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
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
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
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
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

  Widget getGeneralSelectionPage() {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryBgColor,
      child: ListView(
        children: <Widget>[
          TopTitle(
            topMargin: 20.0,
            title: "You selected: General",
          ),
          Container(
            padding: EdgeInsets.only(
                top: 50,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Cough",
                press: () {
                  _finalBodyPartList.add("Cough");
                  setProgress(1);
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 50,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Cold and Flu",
                press: () {
                  _finalBodyPartList.add("Cold and Flu");
                  setProgress(1);
                },
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 50,
                left: (size.width * 0.2) / 2,
                right: (size.width * 0.2) / 2),
            child: Container(
              child: RoundedButton(
                width: 400,
                text: "Headaches",
                press: () {
                  _finalBodyPartList.add("Headaches");
                  setProgress(1);
                },
              ),
            ),
          )
        ],
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
      case 6:
        return getGeneralSelectionPage();
    }
    return Scaffold(
      body: Text("Error"),
    );
  }

  void sortDiagnoses() {
    _possibleDiagnosis.sort((snd, fst) {
      int fstScore = fst["score"];
      int sndScore = snd["score"];
      return fstScore.compareTo(sndScore);
    });
  }

  void sendRequest() async {
    var query_answers = composeAnswers();

    var user_id = regularUser != null ? regularUser.userId : -1;
    var specialization = "General"; //TODO get specialization
    sortDiagnoses();
    var diagnosis = _possibleDiagnosis[0]["diagnosis"];
    if (_possibleDiagnosis.length >= 2) {
      diagnosis = diagnosis + ", " + _possibleDiagnosis[1]["diagnosis"];
    }
    var full_name = regularUser == null
        ? _data['full_name']
        : (regularUser.firstName + " " + regularUser.lastName);
    var phone = regularUser == null ? _data['phone'] : regularUser.phone;
    var time = DateTime.now().toString();
    var age = _data[
        'age']; // var full_name = regularUser == null ? _data['full_name'] : regularUser.age; // TODO solve birthdate => age
    var height = regularUser == null ? _data['height'] : regularUser.height;
    var weight = regularUser == null ? _data['weight'] : regularUser.weight;
    var chronic_diseases = regularUser == null
        ? _data['chronic_diseases']
        : regularUser.chronic_diseases;

    try {
      var res = await postToServer(api: 'SendRequest', body: {
        'patient_id': user_id,
        'specialization': specialization,
        'query_answers': query_answers,
        'diagnosis': diagnosis,
        'full_name': full_name,
        'phone': phone,
        'time': time,
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

  void joinCommunity() async {
    var specialization = "General"; //TODO get others as well
    var user_id = regularUser != null ? regularUser.userId : -1;

    try {
      var res = await postToServer(api: 'JoinCommunity', body: {
        'userId': user_id,
        'specialization': specialization,
      });
      if (res['msg'] == 'Success') {
        print("Joined" + specialization + "community successfully");
      }
    } catch (e) {
      final snackBar = SnackBar(
        content: Text('$e'),
        backgroundColor: kPrimaryColor,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
