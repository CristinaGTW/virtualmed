import 'package:flutter/material.dart';
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
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: size.height / 5,
            child: Logo(iconColor: Colors.white),
          ),
          Positioned(
            top: 3 * size.height / 5,
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
          Positioned(
            top: 3 * size.height / 5 + 75,
            child: RoundedButton(
              text: "LOG IN",
              press: () =>
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MainNavAuth();
              })),
              color: kPrimaryColor,
              borderColor: Colors.white,
              textColor: Colors.white,
            ),
          ),
          Positioned(
            top: 3 * size.height / 5 + 150,
            child: TextButton(
              onPressed: () {},
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
        ],
      ),
    );
  }
}
