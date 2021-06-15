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

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
            child: RoundedPasswordField(
              onChanged: (value) => _data['password'] = value,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: sidePadding, right: sidePadding),
            child: RoundedPasswordField(
              onChanged: (value) {
                if (value.compareTo(_data['password']) != 0) {
                  final snackBar = SnackBar(
                    content: Text('Passwords do not match'),
                    backgroundColor: kPrimaryColor,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
              press: () => _formKey.currentState.validate() ? register() : {},
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
                  onPressed: () => Navigator.push(context,
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
      final snackBar = SnackBar(
        content: Text('$e'),
        backgroundColor: kPrimaryColor,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
