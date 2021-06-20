import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Services/chat/conversation-app-bar.dart';
import 'package:virtual_med/Services/chat/conversation_page.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/components/rounded_button.dart';
import 'package:virtual_med/components/top-title.dart';
import 'package:provider/provider.dart';

class AcceptedRequestPage extends StatelessWidget {
  final int patient_id;
  final String name;
  final String image;
  final String phone;
  final String age;
  final String height;
  final String weight;
  final String chronic_diseases;

  final String query_answers;
  final String diagnosis;

  DoctorUser doctorUser;
  bool isRegistered;

  AcceptedRequestPage({
    Key key,
    @required this.name,
    @required this.image,
    @required this.phone,
    @required this.age,
    @required this.height,
    @required this.weight,
    @required this.chronic_diseases,
    @required this.query_answers,
    @required this.diagnosis,
    @required this.patient_id,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    doctorUser = context.watch<UserProvider>().doctorUser;
    return Scaffold(
      appBar: ConversationAppBar(name: name, image: image),
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
              maxRadius: 100,
            ),
          ),
          getButtons(context),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 50),
            child: Text(
              name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          getDetails(),
          TopTitle(topMargin: 20, title: "Quick Symptom Checker"),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Column(
                  children: [
                    Text(
                      "Query answers:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      query_answers,
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Preliminary diagnosis:",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      diagnosis,
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget getDetails() {
    return Container(
        margin: EdgeInsets.all(20),
        child: Column(children: [
          TopTitle(topMargin: 20, title: "Basic Info"),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              Text(
                "Phone:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                phone != null ? phone : "N/A",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                "Age:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                age != null ? age : "N/A",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                "Height:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                height != null ? height : "N/A",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                "Weight:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                weight != null ? weight : "N/A",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                "Chronic Diseases:",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                chronic_diseases != null ? chronic_diseases : "N/A",
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ]));
  }

  Widget getButtons(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return patient_id != null
        ? Container(
            width: size.width * 0.6,
            child: RoundedButton(
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ConversationPage(
                      name: name, image: image, receiver_id: patient_id);
                }));
              },
              text: "Chat with " + name,
            ),
          )
        : Container();
  }
}
