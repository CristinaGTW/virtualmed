import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:provider/provider.dart';
import 'package:virtual_med/Screens/Authentication/components/rounded_input_field.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/Services/utils.dart';
import 'package:virtual_med/components/landing-page.dart';
import 'package:virtual_med/components/rounded_button.dart';
import 'package:virtual_med/components/top-title.dart';

import '../../../../components.dart';

Map<String, String> _data = {
  'first_name': '',
  'last_name': '',
  'email': '',
  'phone': '',
  'specialization': '',
  'location': ''
};

class DoctorProfileTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DoctorProfileTabState();
}

class _DoctorProfileTabState extends State<DoctorProfileTab> {
  DoctorUser doctorUser;

  @override
  Widget build(BuildContext context) {
    doctorUser = context.watch<UserProvider>().doctorUser;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: kPrimaryBgColor,
        child: ListView(
          padding: EdgeInsets.only(left: size.width * 0.1, right: size.width * 0.1),
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: TopTitle(
                topMargin: 50,
                title: "Basic Info",
              ),
            ),
            getProfileField(doctorUser.firstName, "First Name", 'first_name',
                Icons.person, size),
            getProfileField(doctorUser.lastName, "Last Name", 'last_name',
                Icons.person, size),
            getProfileField(
                doctorUser.email, "Email", 'email', Icons.email, size),
            getProfileField(
                doctorUser.phone, "Phone", 'phone', Icons.phone, size),
            getProfileField(doctorUser.specialization, "Specialization",
                'specialization', Icons.local_hospital, size),
            getProfileField(doctorUser.location, "Location", 'location',
                Icons.pin_drop, size),
            Container(
              padding: EdgeInsets.only(
                  top: 50,
                  left: (size.width*0.2) / 2,
                  right: (size.width*0.2) / 2),
              child: getButtons()
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
            text: "Sign Out",
            press: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LandingPage();
              }));
              context.read<UserProvider>().setDoctorUser(null);
            },
          ),
        ),
      ],
    );
  }

  void updateDetails() async {
    var id = doctorUser.userId;
    var firstName =
        (_data["first_name"] == '') && (doctorUser.firstName != null)
            ? doctorUser.firstName
            : _data["first_name"];
    var lastName = (_data["last_name"] == '') && (doctorUser.lastName != null)
        ? doctorUser.lastName
        : _data["last_name"];
    var email = (_data["email"] == '') && (doctorUser.email != null)
        ? doctorUser.email
        : _data["email"];
    var phone = (_data["phone"] == '') && (doctorUser.phone != null)
        ? doctorUser.phone
        : _data["phone"];
    var specialization =
        (_data["specialization"] == '') && (doctorUser.specialization != null)
            ? doctorUser.specialization
            : _data["specialization"];
    var location = (_data["location"] == '') && (doctorUser.location != null)
        ? doctorUser.location
        : _data["location"];

    var res = await postToServer(api: 'UpdateDoctorDetails', body: {
      'id': id,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'phone': phone,
      'specialization': specialization,
      'location': location,
    });
    if (res['msg'] == "Success") {
      context.read<UserProvider>().setDoctorUser(DoctorUser(
            userId: id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            phone: phone,
            specialization: specialization,
            location: location,
            password: doctorUser.password,
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
