import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Authentication/components/text_field_container.dart';

import '../../../components.dart';

class RoundedInputField extends StatelessWidget {
  final String inputText;
  final IconData icon;
  final ValueChanged<String> onChanged;

  const RoundedInputField(
      {Key key, @required this.inputText, this.icon, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextFieldContainer(
        child: TextFormField(
          validator: (value) => value.isEmpty ? "This field is required" : null,
          onChanged: onChanged,
          decoration: InputDecoration(
            icon: Icon(icon),
            hintText: inputText,
            border: InputBorder.none,
          ),
          cursorColor: Colors.grey,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
