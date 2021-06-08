import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:virtual_med/Screens/main_nav.dart';
import 'package:virtual_med/Services/provider.dart';

import 'components/body.dart';

void main() =>
    runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
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
      return Scaffold();
    }
    return LandingPage();
  }


}

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPage();
}

class _LandingPage extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
