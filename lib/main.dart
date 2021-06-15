import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtual_med/Services/message-provider.dart';
import 'package:virtual_med/Services/user-provider.dart';

import 'Screens/Doctor/main_nav_doctor.dart';
import 'Screens/main_nav.dart';
import 'components/landing-page.dart';

void main() => runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
        ChangeNotifierProvider(create: (_) => MessageProvider())
      ],
      child: VirtualMed(),
    ));

class VirtualMed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VirtualMed - Welcome',
      theme: ThemeData(
        primarySwatch: Colors.red,
        // primarySwatch: Colors.blue,
      ),
      // home: Body(),
      home: getPage(context),
    );
  }

  Widget getPage(BuildContext context) {
    if (context.watch<UserProvider>().regularUser != null) {
      return MainNavAuth();
    }
    if (context.watch<UserProvider>().doctorUser != null) {
      return MainNavDoctor();
    }
    return LandingPage();
  }
}

