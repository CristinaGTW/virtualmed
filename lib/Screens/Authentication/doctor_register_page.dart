import 'package:flutter/material.dart';
import 'package:virtual_med/components/rounded_button.dart';

import '../../components.dart';
import 'components/logo.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';

class DoctorRegisterPage extends StatelessWidget {
  const DoctorRegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sidePadding = (size.width - 400) / 2;
    return Scaffold(
      body: ListView(
        // alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height / 8),
            child: Logo(
              iconColor: kPrimaryColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20, left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "First Name",
              icon: Icons.person,
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Last Name",
              icon: Icons.person,
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Your Office Email",
              icon: Icons.email,
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Phone Number",
              icon: Icons.phone,
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Your Specialization",
              icon: Icons.medical_services,
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Location",
              icon: Icons.pin_drop,
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedPasswordField(
              onChanged: (value) {},
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedPasswordField(
              onChanged: (value) {},
              confirm: true,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, bottom: 50, left: sidePadding, right: sidePadding),
            child: RoundedButton(
              text: "Register",
              press: () {},
              // press: () =>
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return RegularRegisterPage();
              //     })),
              color: kPrimaryColor,
              borderColor: Colors.white,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
