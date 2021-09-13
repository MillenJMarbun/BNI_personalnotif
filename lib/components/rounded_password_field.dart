import 'package:flutter/material.dart';
import 'package:bnipersonalnotif/components/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: Colors.deepOrangeAccent,
        decoration: InputDecoration(
          hintText: "Password",
          hintStyle: TextStyle(color: Colors.teal),
          icon: Icon(
            Icons.lock,
            color: Colors.deepOrangeAccent,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.deepOrangeAccent,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
