import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Authentication/doctor_register_page.dart';
import 'package:virtual_med/Screens/Authentication/regular_register_page.dart';
import 'package:virtual_med/components.dart';
import 'package:virtual_med/components/rounded_button.dart';

import 'components/logo.dart';

class AccountSelection extends StatelessWidget {
  const AccountSelection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: size.height / 5,
            child: Logo(
              iconColor: kPrimaryColor,
            ),
          ),
          Positioned(
            top: 3 * size.height / 5 - 25,
            child: Text(
              "Choose account type",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  decoration: TextDecoration.none),
            ),
          ),
          Positioned(
            top: 3 * size.height / 5 + 25,
            child: RoundedButton(
              text: "Regular Account",
              press: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return RegularRegisterPage();
              })),
              color: kPrimaryColor,
              borderColor: Colors.white,
              textColor: Colors.white,
            ),
          ),
          Positioned(
            top: 3 * size.height / 5 + 100,
            child: RoundedButton(
              text: "Doctor Account",
              press: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DoctorRegisterPage();
              })),
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
