import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Screens/Authentication/login_page.dart';
import 'package:virtual_med/Services/user-provider.dart';
import 'package:virtual_med/components/rounded_button.dart';
import 'package:provider/provider.dart';

import '../../components.dart';
import 'components/logo.dart';
import 'components/rounded_input_field.dart';
import 'components/rounded_password_field.dart';

Map<String, String> _data = {
  'first_name': '',
  'last_name': '',
  'email': '',
  'phone': '',
  'password': ''
};

class RegularRegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegularRegisterPageState();
}

class _RegularRegisterPageState extends State<RegularRegisterPage> {
  // final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double sidePadding = (size.width * 0.2) / 2;
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
              onChanged: (value) => _data['first_name'] = value,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Last Name",
              icon: Icons.person,
              onChanged: (value) => _data['last_name'] = value,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Your Email",
              icon: Icons.email,
              onChanged: (value) => _data['email'] = value,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedInputField(
              inputText: "Phone Number",
              icon: Icons.phone,
              onChanged: (value) => _data['phone'] = value,
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
            child: RoundedPasswordField(
              password: _data['password'],
              confirm: true,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 50, bottom: 50, left: sidePadding, right: sidePadding),
            child: RoundedButton(
              text: "Register",
              press: () {
                if (_formKey.currentState.validate()) {
                  setState(() {
                    loading = true;
                  });
                  register();
                }
              },
              color: kPrimaryColor,
              borderColor: Colors.white,
              textColor: Colors.white,
            ),
          ),
          loading ? Center(child: CircularProgressIndicator()) : Container(),
          Container(
            margin: EdgeInsets.only(
                left: sidePadding + 50, right: sidePadding + 50),
            child: Column(
              children: <Widget>[
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                      fontSize: 16,
                      color: kPrimaryColor,
                      decoration: TextDecoration.none),
                ),
                TextButton(
                  onPressed: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return LoginPage();
                  })),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Login here",
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
        ],
      ),
    ));
  }

  void register() async {
    try {
      context.read<UserProvider>().setRegularUser(await RegularUser.register(
          '${_data['first_name']}',
          '${_data['last_name']}',
          '${_data['email']}',
          '${_data['phone']}',
          '${_data['password']}'));
    } catch (e) {
      if (!e.toString().contains("JSON")) {
        String message =
            "Something went wrong! This email may already be registered";

        final snackBar = SnackBar(
          content: Text(message),
          backgroundColor: kPrimaryColor,
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        setState(() {
          loading = false;
        });
      }
      return;
    }
    final snackBar = SnackBar(
      content: Text(
          '${_data['first_name']} ${_data['last_name']} registered successfully'),
      backgroundColor: Colors.green,
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    loading = false;
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LoginPage();
    }));
  }
}
