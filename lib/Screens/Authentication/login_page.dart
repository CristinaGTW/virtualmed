import 'package:flutter/material.dart';
import 'package:virtual_med/components/rounded_button.dart';

import '../../components.dart';
import 'account_selection.dart';
import 'components/logo.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sidePadding = (size.width - 400) / 2;
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height / 5),
            child: Logo(
              iconColor: kPrimaryColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 50, left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Email",
              icon: Icons.email,
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
            margin: EdgeInsets.only(top: 50, left: sidePadding, right: sidePadding),
            child: RoundedButton(
              text: "Login",
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
          Container(
            margin: EdgeInsets.only(left: sidePadding + 50, right: sidePadding + 50),
            child: Row(
              children: <Widget>[
                Text(
                  "Don't have an account? ",
                  style: TextStyle(
                      fontSize: 18,
                      color: kPrimaryColor,
                      decoration: TextDecoration.none),
                ),
                TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return AccountSelection();
                  })),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Register here",
                      style: TextStyle(
                          fontSize: 18,
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
