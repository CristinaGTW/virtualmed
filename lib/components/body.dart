import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Authentication/account_selection.dart';
import 'package:virtual_med/Screens/Authentication/login_page.dart';
import 'package:virtual_med/Screens/main_nav.dart';
import 'package:virtual_med/components/rounded_button.dart';

import '../components.dart';
import 'logo.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: kPrimaryColor,
      height: size.height,
      width: double.infinity,
      child: ListView(
        // alignment: Alignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: size.height / 5),
            child: Logo(iconColor: Colors.white),
          ),
          Container(
            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
            child: RoundedButton(
              text: "EMERGENCY",
              press: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainNavUnauth();
              })),
              color: Colors.white,
              textColor: kPrimaryColor,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
            child: RoundedButton(
              text: "LOG IN",
              press: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return LoginPage();
              })),
              color: kPrimaryColor,
              borderColor: Colors.white,
              textColor: Colors.white,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: TextButton(
              onPressed: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return AccountSelection();
              })),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Create free account",
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      decoration: TextDecoration.underline),
                ),
              ),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 20),
              child: Container(
                  child: Text(
                    "Disclaimer:\nThis app cannot replace a visit to the doctor.\n\"Medicine is not a cooking book.\"",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        decoration: TextDecoration.none),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.1)))
        ],
      ),
    );
  }
}
