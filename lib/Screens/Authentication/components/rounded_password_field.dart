import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Authentication/components/text_field_container.dart';

import '../../../components.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final bool confirm;

  const RoundedPasswordField({Key key, this.confirm = false, this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextFieldContainer(
        child: TextField(
          obscureText: true,
          onChanged: onChanged,
          style: TextStyle(fontSize: 20),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            hintText: confirm ? "Confirm Password" : "Password",
            icon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
