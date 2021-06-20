import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Screens/Doctor/main_nav_doctor.dart';
import 'package:virtual_med/Services/chat/conversation-app-bar.dart';
import 'package:virtual_med/Services/utils.dart';
import 'package:virtual_med/components/top-title.dart';

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
    @required this.doctorUser,
    @required this.query_answers,
    @required this.diagnosis,
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
              final snackBar = SnackBar(
                content: Text("Successfully accepted request"),
                backgroundColor: Colors.green,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
              Navigator.pop(context);
              Navigator.pop(context);
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
    await postToServer(api: 'AcceptRequest', body: {
      "doctor_id": doctorUser.userId,
      "patient_phone": phone,
      "patient_name": name,
      "query_answers": query_answers,
      "diagnosis": diagnosis
    });

  }
}
