import 'package:flutter/material.dart';

import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Authentication/components/rounded_input_field.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:provider/provider.dart';
import 'package:virtual_med/Services/utils.dart';
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
                  left: (size.width - 400) / 2,
                  right: (size.width - 400) / 2),
              child: Container(
                child: RoundedButton(
                  width: 400,
                  text: "Update",
                  press: () {
                    updateDetails();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget getProfileField(String userField, String fieldName, String dataField,
      IconData iconData, Size size) {
    return Container(
      padding: EdgeInsets.only(
          top: 10, left: (size.width - 400) / 2, right: (size.width - 400) / 2),
      child: RoundedInputField(
        inputText: userField == '' ? fieldName : "",
        initialValue: userField != '' ? userField : "",
        icon: iconData,
        prefixIcon: userField == ''
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

  void updateDetails() async {
    var id = regularUser.userId;
    var firstName =
        _data["first_name"] == '' ? regularUser.firstName : _data["first_name"];
    var lastName =
        _data["last_name"] == '' ? regularUser.lastName : _data["last_name"];
    var email = _data["email"] == '' ? regularUser.email : _data["email"];
    var phone = _data["phone"] == '' ? regularUser.phone : _data["phone"];
    var birthdate =
        _data["birthdate"] == '' ? regularUser.birthdate : _data["birthdate"];
    var height = _data["height"] == '' ? regularUser.height : _data["height"];
    var weight = _data["weight"] == '' ? regularUser.weight : _data["weight"];
    var chronic_diseases = _data["chronic_diseases"] == ''
        ? regularUser.chronic_diseases
        : _data["chronic_diseases"];

    var res = await postToServer(api: 'UpdateRegularDetails', body: {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone': phone,
      'birthdate': birthdate,
      'height': height,
      'weight': weight,
      'chronic_diseases': chronic_diseases,
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
}
