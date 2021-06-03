import 'package:flutter/material.dart';

import 'components/body.dart';

void main() => runApp(VirtualMed());

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
      home: LandingPage(),
    );
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
