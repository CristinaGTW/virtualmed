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
      ),
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}
