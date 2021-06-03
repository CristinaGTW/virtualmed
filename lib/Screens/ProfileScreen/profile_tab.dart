import 'package:flutter/material.dart';

import 'dart:async';

import 'package:virtual_med/Models/regular-user.dart';
import 'package:virtual_med/Services/utils.dart';

class ProfileTab extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  Future<RegularUser> futureRegularUser;

  @override
  void initState() {
    super.initState();
    futureRegularUser = fetchRegularUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<RegularUser>(
          future: futureRegularUser,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(
                "Hello, " + snapshot.data.firstName,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            // By default, show a loading spinner.
            return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
