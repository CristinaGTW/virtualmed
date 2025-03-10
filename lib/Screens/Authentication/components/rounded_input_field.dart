import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Authentication/components/text_field_container.dart';

import '../../../components.dart';

class RoundedInputField extends StatelessWidget {
  final String inputText;
  final IconData icon;
  final Icon prefixIcon;
  final String initialValue;
  final ValueChanged<String> onChanged;
  final double width;

  const RoundedInputField(
      {Key key,
      this.inputText = "",
      this.icon,
      this.onChanged,
      this.prefixIcon,
      this.initialValue = "",
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 60,
      width: width != null ? width : size.width * 0.6,
      alignment: AlignmentDirectional.centerStart,
      child: TextFieldContainer(
        child: TextFormField(
          validator: (value) => value.isEmpty ? "This field is required" : null,
          onChanged: onChanged,
          initialValue: initialValue,
          decoration: InputDecoration(
            icon: Icon(icon),
            hintText: inputText,
            suffixIcon: prefixIcon,
            border: InputBorder.none,
          ),
          cursorColor: Colors.grey,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
