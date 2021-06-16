import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Screens/Doctor/components/chats/chats_tab.dart';
import 'package:virtual_med/Screens/Doctor/main_nav_doctor.dart';
import 'package:virtual_med/Services/chat/conversation-app-bar.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/Services/utils.dart';
import 'package:virtual_med/components/top-title.dart';
import 'package:provider/provider.dart';

class RequestPage extends StatelessWidget {
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

  RequestPage({
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
                phone,
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
                age,
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
                height,
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
                weight,
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
                chronic_diseases,
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ]));
  }

  Widget getButtons(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              acceptRequest(context);
              if (isRegistered) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainNavDoctor();
                }));
              } else {
                Navigator.pop(context);
                Navigator.pop(context);
              }
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.green,
                  size: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Accept Request",
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.red,
                  size: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Reject Request",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void acceptRequest(BuildContext context) async {
    var res =
        await postToServer(api: 'CheckUser', body: {'user_id': patient_id});
    if (res['body'].length > 0) {
      await postToServer(
          api: 'AcceptRequest',
          body: {"doctor_id": doctorUser.userId, "patient_id": patient_id});

      isRegistered = true;
    } else {
      isRegistered = false;
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return UnregisteredRequestPage(
          name: name,
          phone: phone,
          doctorUser: doctorUser,
          query_answers: query_answers,
          diagnosis: diagnosis,
        );
      }));
    }
  }
}

class UnregisteredRequestPage extends StatelessWidget {
  final String name;
  final String phone;
  final String image;
  final DoctorUser doctorUser;
  final String query_answers;
  final String diagnosis;

  const UnregisteredRequestPage({
    Key key,
    @required this.name,
    this.image,
    @required this.phone,
    @required this.doctorUser, @required this.query_answers, @required this.diagnosis,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: ConversationAppBar(name: name),
        body: Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ListView(
            children: <Widget>[
              TopTitle(
                topMargin: 50.0,
                title:
                    "This user is not registered and cannot be contacted via VirtualMed",
              ),
              TopTitle(
                topMargin: 10.0,
                title:
                    "To complete the request, please contact the user directly via: ",
              ),
              TopTitle(
                title: phone,
              ),
              getButtons(context),
              TopTitle(
                topMargin: 50.0,
                color: Colors.red,
                fontWeight: FontWeight.normal,
                title:
                    "Please only press complete AFTER you have contacted the user. Any accepted request will not be available to other doctors anymore.",
              ),
            ],
          ),
        ));
  }

  Widget getButtons(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              acceptUnregisteredRequest(context);
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.add_circle_outline,
                  color: Colors.green,
                  size: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Complete Request",
                  style: TextStyle(fontSize: 18, color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Icon(
                  Icons.cancel_outlined,
                  color: Colors.red,
                  size: 50,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Reject Request",
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void acceptUnregisteredRequest(BuildContext context) async {
    await postToServer(api: 'AcceptUnregisteredRequest', body: {
      "doctor_id": doctorUser.userId,
      "patient_phone": phone,
      "patient_name": name,
      "query_answers": query_answers,
      "diagnosis": diagnosis
    });
  }
}
