import 'package:flutter/material.dart';

import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Authentication/components/rounded_input_field.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:provider/provider.dart';
import 'package:virtual_med/Services/utils.dart';
import 'package:virtual_med/components/landing-page.dart';
import 'package:virtual_med/components/rounded_button.dart';
import 'package:virtual_med/components/top-title.dart';

import '../../components.dart';

Map<String, String> _data = {
  'first_name': '',
  'last_name': '',
  'email': '',
  'phone': '',
  'birthdate': '',
  'height': '',
  'weight': '',
  'chronic_diseases': ''
};

class ProfileTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  RegularUser regularUser;

  @override
  Widget build(BuildContext context) {
    regularUser = context.watch<UserProvider>().regularUser;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kPrimaryBgColor,
        child: ListView(
          padding:
              EdgeInsets.only(left: size.width * 0.1, right: size.width * 0.1),
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: TopTitle(
                topMargin: 50,
                title: "Basic Info",
              ),
            ),
            getProfileField(regularUser.firstName, "First Name", 'first_name',
                Icons.person, size),
            getProfileField(regularUser.lastName, "Last Name", 'last_name',
                Icons.person, size),
            getProfileField(
                regularUser.email, "Email", 'email', Icons.email, size),
            getProfileField(
                regularUser.phone, "Phone", 'phone', Icons.phone, size),
            getProfileField(regularUser.birthdate, "Birthdate (dd-mm-yyyy)",
                'birthdate', Icons.calendar_today_outlined, size),
            getProfileField(
                regularUser.height, "Height", 'height', Icons.height, size),
            getProfileField(
                regularUser.weight, "Weight", 'weight', Icons.person, size),
            getProfileField(regularUser.chronic_diseases, "Chronic Diseases",
                'chronic_diseases', Icons.local_hospital, size),
            Container(
                padding: EdgeInsets.only(
                    top: 50,
                    left: (size.width * 0.2) / 2,
                    right: (size.width * 0.2) / 2),
                child: getButtons())
          ],
        ),
      ),
    );
  }

  Widget getProfileField(String userField, String fieldName, String dataField,
      IconData iconData, Size size) {
    return Container(
      padding: EdgeInsets.only(
          top: 10, left: (size.width * 0.2) / 2, right: (size.width * 0.2) / 2),
      child: RoundedInputField(
        inputText: (userField == '') || (userField == null) ? fieldName : "",
        initialValue: userField != '' ? userField : "",
        icon: iconData,
        prefixIcon: (userField == '') || (userField == null)
            ? Icon(
                Icons.cancel_outlined,
                color: Colors.red,
              )
            : Icon(
                Icons.check_circle_outline,
                color: Colors.green,
              ),
        onChanged: (value) => _data[dataField] = value,
      ),
    );
  }

  Widget getButtons() {
    return Column(
      children: <Widget>[
        Container(
          child: RoundedButton(
            width: 300,
            text: "Update",
            press: () {
              updateDetails();
            },
          ),
        ),
        Container(
          child: RoundedButton(
            width: 300,
            text: "Exit From Communities",
            press: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 300,
                    color: kPrimaryColor,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          TopTitle(
                            title: "Are you sure you want to exit?",
                            color: Colors.white,
                          ),
                          Container(
                            padding: EdgeInsets.all(30),
                            child: Text(
                              "By continuing, you will exit from all communities you are currently in." +
                                  " No new users will be able to contact you. You will still be able to keep in touch " +
                                  "with all your current connections.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 14),
                            ),
                          ),
                          RoundedButton(
                            text: 'Exit',
                            color: Colors.white,
                            textColor: kPrimaryColor,
                            press: () {
                              exitCommunity();
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
        Container(
          child: RoundedButton(
            width: 300,
            text: "Sign Out",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LandingPage();
              }));
              context.read<UserProvider>().setRegularUser(null);
            },
          ),
        ),
      ],
    );
  }

  void updateDetails() async {
    var id = regularUser.userId;
    var firstName =
        (_data["first_name"] == '') && (regularUser.firstName != null)
            ? regularUser.firstName
            : _data["first_name"];
    var lastName = (_data["last_name"] == '') && (regularUser.lastName != null)
        ? regularUser.lastName
        : _data["last_name"];
    var email = (_data["email"] == '') && (regularUser.email != null)
        ? regularUser.email
        : _data["email"];
    var phone = (_data["phone"] == '') && (regularUser.phone != null)
        ? regularUser.phone
        : _data["phone"];
    var birthdate =
        (_data["birthdate"] == '') && (regularUser.birthdate != null)
            ? regularUser.birthdate
            : _data["birthdate"];
    var height = (_data["height"] == '') && (regularUser.height != null)
        ? regularUser.height
        : _data["height"];
    var weight = (_data["weight"] == '') && (regularUser.weight != null)
        ? regularUser.weight
        : _data["weight"];
    var chronic_diseases = (_data["chronic_diseases"] == '') &&
            (regularUser.chronic_diseases != null)
        ? regularUser.chronic_diseases
        : _data["chronic_diseases"];

    var res = await postToServer(api: 'UpdateRegularDetails', body: {
      'id': id,
      'first_name': formatSpecialCharacters(firstName),
      'last_name': formatSpecialCharacters(lastName),
      'email': formatSpecialCharacters(email),
      'phone': formatSpecialCharacters(phone),
      'birthdate': formatSpecialCharacters(birthdate),
      'height': formatSpecialCharacters(height),
      'weight': formatSpecialCharacters(weight),
      'chronic_diseases': formatSpecialCharacters(chronic_diseases),
    });
    if (res['msg'] == "Success") {
      context.read<UserProvider>().setRegularUser(RegularUser(
            userId: id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            phone: phone,
            birthdate: birthdate,
            height: height,
            weight: weight,
            chronic_diseases: chronic_diseases,
            password: regularUser.password,
          ));

      final snackBar = SnackBar(
        content: Text('Profile Updated Successfully'),
        backgroundColor: Colors.green,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      final snackBar = SnackBar(
        content: Text('An error occurred. Please try again!'),
        backgroundColor: kPrimaryColor,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> exitCommunity() async {
    var user_id = regularUser != null ? regularUser.userId : -1;

    try {
      var res = await postToServer(api: 'ExitCommunities', body: {
        'userId': user_id,
      });
      if (res['msg'] == 'Success') {
        print("Exited all communities successfully");
      }
    } catch (e) {
      final snackBar = SnackBar(
        content: Text('$e'),
        backgroundColor: kPrimaryColor,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  String formatSpecialCharacters(String message) {
    String finalMessage = "";

    for (var c in message.characters) {
      if (c == '\'') {
        finalMessage += '\'';
      }
      finalMessage += c;
    }

    return finalMessage;
  }
}
