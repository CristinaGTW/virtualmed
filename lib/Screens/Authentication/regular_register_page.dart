import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Authentication/login_page.dart';
import 'package:virtual_med/components/rounded_button.dart';

import '../../components.dart';
import 'components/logo.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';

class RegularRegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegularRegisterPageState();
}

class _RegularRegisterPageState extends State<RegularRegisterPage> {
  // final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  String firstName = "";
  String lastName = "";
  String email = "";
  String phone = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double sidePadding = (size.width - 400) / 2;
    return Scaffold(
        body: Form(
          key: _formKey,
          child: ListView(
            // alignment: Alignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: size.height / 8),
                child: Logo(
                  iconColor: kPrimaryColor,
                ),
              ),
              Container(
                margin:
                EdgeInsets.only(top: 20, left: sidePadding, right: sidePadding),
                child: RoundedInputField(
                  inputText: "First Name",
                  icon: Icons.person,
                  onChanged: (value) {
                    setState(() {
                      firstName = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
                child: RoundedInputField(
                  inputText: "Last Name",
                  icon: Icons.person,
                  onChanged: (value) {
                    setState(() {
                      lastName = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
                child: RoundedInputField(
                  inputText: "Your Email",
                  icon: Icons.email,
                  onChanged: (value) {
                    setState(() {
                      email = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
                child: RoundedInputField(
                  inputText: "Phone Number",
                  icon: Icons.phone,
                  onChanged: (value) {
                    setState(() {
                      phone = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
                child: RoundedPasswordField(
                  onChanged: (value) {
                    setState(() {
                      password = value;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
                child: RoundedPasswordField(
                  onChanged: (value) {
                    if (value.compareTo(password) == 0) {
                      // passwords match ==> continue
                    } else {
                      // show error message
                    }
                  },
                  confirm: true,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: 50, bottom: 50, left: sidePadding, right: sidePadding),
                child: RoundedButton(
                  text: "Register",
                  press: () async {
                    if (_formKey.currentState.validate()) {
                      // success





                    }
                  },
                  color: kPrimaryColor,
                  borderColor: Colors.white,
                  textColor: Colors.white,
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: sidePadding + 50, right: sidePadding + 50),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Already have an account? ",
                      style: TextStyle(
                          fontSize: 18,
                          color: kPrimaryColor,
                          decoration: TextDecoration.none),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              })),
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          "Login here",
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
        )
    );
  }
}
