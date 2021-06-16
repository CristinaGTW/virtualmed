import 'package:flutter/material.dart';
import 'package:virtual_med/Screens/Authentication/components/text_field_container.dart';

import '../../../components.dart';

class RoundedPasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  final bool confirm;
  final double width;

  RoundedPasswordField(
      {Key key, this.confirm = false, this.onChanged, this.width});

  @override
  State<StatefulWidget> createState() => _RoundedPasswordFieldState();
}

class _RoundedPasswordFieldState extends State<RoundedPasswordField> {
  bool obscureText = true;

  _RoundedPasswordFieldState({Key key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 60,
      width: widget.width != null ? widget.width : size.width * 0.6,
      alignment: AlignmentDirectional.centerStart,
      child: TextFieldContainer(
        child: TextFormField(
          validator: (value) => value.length < 8
              ? "Password must be at least 8 characters long"
              : null,
          obscureText: obscureText,
          onChanged: widget.onChanged,
          style: TextStyle(fontSize: 20),
          cursorColor: Colors.grey,
          decoration: InputDecoration(
            // contentPadding: EdgeInsets.only(top: 5),
            hintText: widget.confirm ? "Confirm Password" : "Password",
            icon: Icon(Icons.lock),
            suffix: IconButton(
              icon: obscureText
                  ? Icon(
                      Icons.visibility_outlined,
                      color: kPrimaryColor,
                    )
                  : Icon(
                      Icons.visibility_off_outlined,
                      color: kPrimaryColor,
                    ),
              onPressed: () {
                setState(() {
                  obscureText = !obscureText;
                });
              },
            ),
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
