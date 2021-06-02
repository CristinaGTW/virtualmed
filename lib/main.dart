import 'package:flutter/material.dart';
import 'package:virtual_med/components.dart';

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
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}
