import 'package:flutter/material.dart';
import 'package:virtual_med/Models/doctor-user.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Doctor/main_nav_doctor.dart';
import 'package:virtual_med/Screens/main_nav.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/components/rounded_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'dart:convert';
import 'package:crypto/crypto.dart';
import '../../components.dart';
import 'account_selection.dart';
import 'components/logo.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';

Map<String, String> _data = {'email': '', 'password': ''};

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  int radioButtonValue = 0;
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    if (context.watch<UserProvider>().regularUser != null) {
      return MainNavAuth();
    }
    if (context.watch<UserProvider>().doctorUser != null) {
      return MainNavDoctor();
    }
    return getLoginPage();
  }

  Widget getLoginPage() {
    Size size = MediaQuery.of(context).size;
    double sidePadding = (size.width * 0.2) / 2;
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: size.height / 5),
              child: Logo(
                iconColor: kPrimaryColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 50, left: sidePadding, right: sidePadding),
              child: RoundedInputField(
                inputText: "Email",
                icon: Icons.email,
                onChanged: (value) => _data['email'] = formatSpecialCharacters(value),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
              child: RoundedPasswordField(onChanged: (value) {
                List<int> bytes = utf8.encode(value);
                String hash = sha512.convert(bytes).toString();
                _data['password'] = hash;
              }),
            ),
            Container(
              margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                              activeColor: kPrimaryColor,
                              value: 0,
                              groupValue: radioButtonValue,
                              onChanged: (index) {
                                setState(() {
                                  radioButtonValue = 0;
                                });
                              }),
                          Expanded(
                            child: Text('Regular Account'),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Radio(
                              activeColor: kPrimaryColor,
                              value: 1,
                              groupValue: radioButtonValue,
                              onChanged: (index) {
                                setState(() {
                                  radioButtonValue = 1;
                                });
                              }),
                          Expanded(child: Text('Doctor Account'))
                        ],
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: 50, left: sidePadding, right: sidePadding),
              child: RoundedButton(
                text: "Login",
                press: () {
                  if (_formKey.currentState.validate()) {
                    setState(() {
                      loading = true;
                    });
                    login();
                  }
                },
                color: kPrimaryColor,
                borderColor: Colors.white,
                textColor: Colors.white,
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Don't have an account? ",
                    style: TextStyle(
                        fontSize: 16,
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
                            fontSize: 16,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            loading ? Center(child: CircularProgressIndicator()) : Container()
          ],
        ),
      ),
    ));
  }

  void login() async {
    try {
      if (radioButtonValue == 1) {
        context.read<UserProvider>().setDoctorUser(await DoctorUser.login(
            '${_data['email']}', '${_data['password']}'));
      } else {
        context.read<UserProvider>().setRegularUser(await RegularUser.login(
            '${_data['email']}', '${_data['password']}'));
      }
    } catch (e) {
      String message = "Something went wrong! Please try again!";
      if (e.toString().contains("no indices are valid: 0")) {
        message =
            "There is no account with this email and password. Please try again!";
      }
      if (e.toString().contains("XMLHttpRequest")) {
        message =
            "Internet connection issue. Please check your network connection";
      }

      final snackBar = SnackBar(
        content: Text(message),
        backgroundColor: kPrimaryColor,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      setState(() {
        loading = false;
      });
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
